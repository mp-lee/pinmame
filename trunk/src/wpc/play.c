/************************************************************************************************
 Playmatic (Spain)
 -----------------

 Playmatic is a nightmare to maintain! Plain and simple.

 They did use at least four, if not five different hardware generations over their years,
 and they're not interchangable at any point or time.
 The earliest games (like "Chance" from 1978) used a rough 400 kHz clock for the ancient
 CDP 1802 CPU (generated by an R/C combo), and had the IRQ hard-wired to zero cross detection.
 The 2nd generation used a clock chip of 2.95 MHz and an IRQ of about 360 Hz.
 The 3rd generation used the same values, but completely re-wired all output circuits!
 The 4th generation used a generic 3.58 MHz NTSC quartz.

 Sound started out with 4 simple tones (with fading option), and evolved through a CPU-driven
 oscillator circuit on to a complete sound board with another 1802 CPU.

   Hardware:
   ---------
		CPU:	 CDP1802 @ various frequencies (various IRQ freq's as well)
		DISPLAY: gen.1: six-digit panels, some digits shared between players
                 gen.2: 5 rows of 7-segment LED panels, direct segment access for alpha digits
		SOUND:	 gen.1: discrete (4 tones, like Zaccaria's 1311)
				 gen.2: simple noise and tone genarator with varying frequencies
				 gen.3: CDP1802 @ NTSC clock with 2 x AY8910 @ NTSC/2 for later games
 ************************************************************************************************/

#include "driver.h"
#include "core.h"
#include "play.h"
#include "cpu/cdp1802/cdp1802.h"
#include "sound/ay8910.h"

#define PLAYMATIC_VBLANKFREQ   60 /* VBLANK frequency */
#define NTSC_QUARTZ 3579545.0 /* 3.58 MHz quartz */

enum { DISPCOL=1, DISPLAY, SOUND, SWITCH, DIAG, LAMPCOL, LAMP, UNKNOWN };

/*----------------
/  Local variables
/-----------------*/
static struct {
  int    vblankCount;
  UINT32 solenoids;
  UINT8  sndCmd;
  int    ef[5];
  int    q;
  int    snd_sc;
  int    lampCol;
  int    digitSel;
  int    panelSel;
  int    cpuType;
  mame_timer *sndtimer;
  int    volume;
} locals;

static INTERRUPT_GEN(PLAYMATIC_irq1) {
  static int irqLine;
  irqLine = (irqLine + 1) % 8;
  cpu_set_irq_line(PLAYMATIC_CPU, CDP1802_INPUT_LINE_INT, !irqLine ? ASSERT_LINE : CLEAR_LINE);
  if (!irqLine) locals.ef[1] = !locals.ef[1];
}

static INTERRUPT_GEN(PLAYMATIC_irq2) {
  static int irqLine = 0;
  irqLine = !irqLine;
  cpu_set_irq_line(PLAYMATIC_CPU, CDP1802_INPUT_LINE_INT, irqLine ? ASSERT_LINE : CLEAR_LINE);
}

static void PLAYMATIC_zeroCross2(int data) {
  static int zc = 0;
  static int state = 0;
  locals.ef[3] = (zc = !zc);
  if (zc) {
    locals.ef[1] = state;
    locals.ef[2] = !state;
    state = !state;
  }
}

/*-------------------------------
/  copy local data to interface
/--------------------------------*/
static INTERRUPT_GEN(PLAYMATIC_vblank1) {
  /*-- lamps --*/
  memcpy(coreGlobals.lampMatrix, coreGlobals.tmpLampMatrix, sizeof(coreGlobals.tmpLampMatrix));
  /*-- solenoids --*/
  coreGlobals.solenoids = (coreGlobals.solenoids & 0x0ffff) | (locals.q << 16);

  core_updateSw(core_getSol(17));
}

static INTERRUPT_GEN(PLAYMATIC_vblank2) {
  locals.vblankCount++;

  /*-- lamps --*/
  memcpy(coreGlobals.lampMatrix, coreGlobals.tmpLampMatrix, sizeof(coreGlobals.tmpLampMatrix));
  /*-- solenoids --*/
  coreGlobals.solenoids = locals.solenoids;
  if ((locals.vblankCount % PLAYMATIC_SOLSMOOTH) == 0)
    locals.solenoids = 0;

  core_updateSw(TRUE);
}

static SWITCH_UPDATE(PLAYMATIC1) {
  if (inports) {
    CORE_SETKEYSW(inports[CORE_COREINPORT] >> 8, 0xe0, 6);
    CORE_SETKEYSW(inports[CORE_COREINPORT], 0x3f, 7);
  }
  locals.ef[2] = core_getDip(0) & 1;
  locals.ef[3] = (core_getDip(0) >> 1) & 1;
  locals.ef[4] = (core_getDip(0) >> 2) & 1;
}

static SWITCH_UPDATE(PLAYMATIC2) {
  if (inports) {
    CORE_SETKEYSW(inports[CORE_COREINPORT], locals.cpuType < 2 ? 0xef : 0xf7, 1);
    CORE_SETKEYSW(inports[CORE_COREINPORT] >> 8, 0x01, 0);
  }
  locals.ef[4] = !(coreGlobals.swMatrix[0] & 1);
}

static WRITE_HANDLER(disp_w) {
  coreGlobals.segments[offset].w = data & 0x7f;
  coreGlobals.segments[48 + offset / 8].w = data & 0x80 ? core_bcd2seg7[0] : 0;
}

static int bitColToNum(int tmp)
{
	int i, data;
	i = data = 0;
	while(tmp)
	{
		if(tmp&1) data=i;
		tmp = tmp>>1;
		i++;
	}
	return data;
}

static WRITE_HANDLER(out1_n) {
  static UINT8 n2data, oldn2data;
  static int timer_on;
  int p = locals.ef[1];
  switch (offset) {
    case 1: // match & credits displays
      coreGlobals.segments[18].w = data & 1 ? core_bcd2seg7[1] : 0;
      coreGlobals.segments[20-p].w = core_bcd2seg7[data >> 4];
      coreGlobals.segments[21].w = data & 2 ? core_bcd2seg7[0] : 0;
      coreGlobals.segments[22].w = data & 2 ? core_bcd2seg7[0] : 0;
      break;
    case 2: // display / sound data
      n2data = data;
      break;
    case 3:
      locals.digitSel = data ^ 0x0f;
      if (locals.digitSel > 1) { // score displays
        coreGlobals.segments[(locals.digitSel-2)*2].w = core_bcd2seg7[n2data >> 4];
        coreGlobals.segments[(locals.digitSel-2)*2 + 1].w = core_bcd2seg7[n2data & 0x0f];
        coreGlobals.segments[2].w |= 0x80;
        coreGlobals.segments[8].w |= 0x80;
        coreGlobals.segments[12].w |= 0x80;
        coreGlobals.segments[16].w |= 0x80;
      } else if (locals.digitSel) { // sound & player up lights
        if (n2data & 0x0f) {
          if (oldn2data != n2data) locals.volume = 100;
          oldn2data = n2data;
          discrete_sound_w(8, n2data & 0x01);
          discrete_sound_w(4, n2data & 0x02);
          discrete_sound_w(2, n2data & 0x04);
          discrete_sound_w(1, n2data & 0x08);
          if (~n2data & 0x10) { // start fading
            timer_adjust(locals.sndtimer, 0.02, 0, 0.02);
            timer_on = 1;
          } else { // no fading used
            timer_adjust(locals.sndtimer, TIME_NEVER, 0, 0);
            timer_on = 0;
            mixer_set_volume(0, locals.volume);
          }
        } else if (!timer_on) { // no fading going on, so stop sound
          discrete_sound_w(8, 0);
          discrete_sound_w(4, 0);
          discrete_sound_w(2, 0);
          discrete_sound_w(1, 0);
        }
        coreGlobals.tmpLampMatrix[6] = (1 << (n2data >> 5)) >> 1;
      } else { // solenoids
        coreGlobals.solenoids = (coreGlobals.solenoids & 0x10000) | n2data;
      }
      break;
    case 4:
      coreGlobals.tmpLampMatrix[p] = data;
      break;
    case 5:
      coreGlobals.tmpLampMatrix[p+2] = data;
      break;
    case 6:
      coreGlobals.tmpLampMatrix[p+4] = data;
      break;
  }
  logerror("out: %d:%02x\n", offset, data);
}

static READ_HANDLER(in1_n) {
  UINT8 data = coreGlobals.swMatrix[offset];
  logerror("in: %d\n", offset);
  return offset > 5 ? ~data : data;
}

static WRITE_HANDLER(out2_n) {
  int i;
  static int outports[4][8] =
    {{ DISPCOL, DISPLAY, SOUND, SWITCH, DIAG, LAMPCOL, LAMP, UNKNOWN },
     { DISPCOL, DISPLAY, SOUND, SWITCH, DIAG, LAMPCOL, LAMP, UNKNOWN },
     { DISPCOL, LAMPCOL, LAMP, SWITCH, DIAG, DISPLAY, SOUND, UNKNOWN },
     { DISPCOL, LAMPCOL, LAMP, SWITCH, DIAG, DISPLAY, SOUND, UNKNOWN }};
  const int out = outports[locals.cpuType][offset-1];
  logerror("out: %d:%02x\n", out, data);
  switch (out) {
    case DISPCOL:
      if (!(data & 0x7f))
        locals.panelSel = 0;
      else
        locals.digitSel = bitColToNum(data & 0x7f);
      discrete_sound_w(1, data >> 7);
      break;
    case DISPLAY:
      disp_w(8 * (locals.panelSel++) + locals.digitSel, data);
      break;
    case SOUND:
      if (cpu_gettotalcpu() > 1) {
	    locals.sndCmd = data;
      }
      break;
    case LAMPCOL:
      locals.lampCol = data;
      break;
    case LAMP:
      if (locals.cpuType < 2) {
        if (!(data & 0x80)) {
          if (locals.ef[3])
            coreGlobals.tmpLampMatrix[locals.lampCol & 0x07] = (coreGlobals.tmpLampMatrix[locals.lampCol & 0x07] & 0xf0) | ((data & 0x0f) ^ 0x0f);
          else
            coreGlobals.tmpLampMatrix[locals.lampCol & 0x07] = (coreGlobals.tmpLampMatrix[locals.lampCol & 0x07] & 0x0f) | (((data & 0x0f) ^ 0x0f) << 4);
        }
      } else {
        if (!(data & 0x10)) {
          if (!locals.ef[3])
            coreGlobals.tmpLampMatrix[locals.lampCol & 0x07] = (coreGlobals.tmpLampMatrix[locals.lampCol & 0x07] & 0xf0) | ((data & 0x0f) ^ 0x0f);
          else
            coreGlobals.tmpLampMatrix[locals.lampCol & 0x07] = (coreGlobals.tmpLampMatrix[locals.lampCol & 0x07] & 0x0f) | (((data & 0x0f) ^ 0x0f) << 4);
        }
      }
      coreGlobals.tmpLampMatrix[8 + (locals.lampCol & 0x07)] = locals.lampCol >> 3;
      locals.vblankCount = 5;
      if (locals.cpuType == 2) locals.vblankCount = 4;
      for (i=0; i < 8; i++) {
        locals.solenoids |= (coreGlobals.tmpLampMatrix[8 + i] & 1) << i;
        locals.solenoids |= (coreGlobals.tmpLampMatrix[8 + i] & 2) << (7 + i);
      }
      locals.solenoids |= (coreGlobals.tmpLampMatrix[8] & 4) << 14;
      break;
    case UNKNOWN:
      logerror("unkown out_n write: %02x\n", data);
      break;
  }
}

static READ_HANDLER(in2_n) {
  int diag = keyboard_pressed_memory_repeat(KEYCODE_Z, 0);
  logerror("in: %d\n", offset);
  switch (offset) {
    case SWITCH:
      if (locals.digitSel < 6)
        return coreGlobals.swMatrix[locals.digitSel+2];
      else
        printf("digitSel = %d!\n", locals.digitSel);
      break;
    case DIAG:
      if (diag) return 0;
      return coreGlobals.swMatrix[1] ^ (locals.cpuType < 2 ? 0xff : 0x0f);
      break;
  }
  return 0;
}

static UINT8 in_mode(void) { return CDP1802_MODE_RUN; }

static void out_q(int level) { locals.q = level; /* connected to RST1 pin of flip flop U2 */ }

static UINT8 in_ef(void) { return locals.ef[1] | (locals.ef[2] << 1) | (locals.ef[3] << 2) | (locals.ef[4] << 3); }

static CDP1802_CONFIG play1802_config =
{
	in_mode,	// MODE
	in_ef,		// EF
	NULL,				// SC
	out_q,		// Q
	NULL,				// DMA read
	NULL				// DMA write
};

static void sndtimer_callback(int n) {
  if (locals.volume) mixer_set_volume(0, (--locals.volume));
  else timer_adjust(locals.sndtimer, TIME_NEVER, 0, 0);
}

static MACHINE_INIT(PLAYMATIC1) {
  memset(&locals, 0, sizeof locals);
  locals.sndtimer = timer_alloc(sndtimer_callback);
  locals.volume = 100;
}

static MACHINE_INIT(PLAYMATIC2) {
  memset(&locals, 0, sizeof locals);
  locals.cpuType = 1;
}

static MACHINE_INIT(PLAYMATIC3) {
  memset(&locals, 0, sizeof locals);
  locals.cpuType = 2;
}

static MACHINE_INIT(PLAYMATIC4) {
  memset(&locals, 0, sizeof locals);
  locals.cpuType = 3;
}

static PORT_READ_START(PLAYMATIC_readport1)
  {0x00,0x07, in1_n},
MEMORY_END

static PORT_READ_START(PLAYMATIC_readport2)
  {0x00,0x07, in2_n},
MEMORY_END

static PORT_WRITE_START(PLAYMATIC_writeport1)
  {0x00,0x07, out1_n},
MEMORY_END

static PORT_WRITE_START(PLAYMATIC_writeport2)
  {0x00,0x07, out2_n},
MEMORY_END

static MEMORY_READ_START(PLAYMATIC_readmem1)
  {0x0000,0x07ff, MRA_ROM},
  {0x0800,0x0fff, MRA_RAM},
MEMORY_END

static MEMORY_WRITE_START(PLAYMATIC_writemem1)
  {0x0800,0x0fff, MWA_RAM, &generic_nvram, &generic_nvram_size},
MEMORY_END

static MEMORY_READ_START(PLAYMATIC_readmem2)
  {0x0000,0x1fff, MRA_ROM},
  {0x2000,0x20ff, MRA_RAM},
  {0xa000,0xafff, MRA_ROM},
MEMORY_END

static MEMORY_WRITE_START(PLAYMATIC_writemem2)
  {0x0000,0x00ff, MWA_NOP},
  {0x2000,0x20ff, MWA_RAM, &generic_nvram, &generic_nvram_size},
MEMORY_END

static MEMORY_READ_START(PLAYMATIC_readmem3)
  {0x0000,0x7fff, MRA_ROM},
  {0x8000,0x80ff, MRA_RAM},
MEMORY_END

static MEMORY_WRITE_START(PLAYMATIC_writemem3)
  {0x0000,0x00ff, MWA_NOP},
  {0x8000,0x80ff, MWA_RAM, &generic_nvram, &generic_nvram_size},
MEMORY_END

DISCRETE_SOUND_START(play_tones)
	DISCRETE_INPUT(NODE_01,1,0x000f,0)                         // Input handlers, mostly for enable
	DISCRETE_INPUT(NODE_02,2,0x000f,0)
	DISCRETE_INPUT(NODE_04,4,0x000f,0)
	DISCRETE_INPUT(NODE_08,8,0x000f,0)

	DISCRETE_TRIANGLEWAVE(NODE_10,NODE_01,523,50000,10000,0) // C' note
	DISCRETE_TRIANGLEWAVE(NODE_20,NODE_02,659,50000,10000,0) // E' note
	DISCRETE_TRIANGLEWAVE(NODE_30,NODE_04,784,50000,10000,0) // G' note
	DISCRETE_TRIANGLEWAVE(NODE_40,NODE_08,988,50000,10000,0) // H' note

	DISCRETE_ADDER4(NODE_50,1,NODE_10,NODE_20,NODE_30,NODE_40) // Mix all four sound sources

	DISCRETE_OUTPUT(NODE_50, 75)                               // Take the output from the mixer
DISCRETE_SOUND_END

static int play_sw2m(int no) { return 8+(no/10)*8+(no%10-1); }
static int play_m2sw(int col, int row) { return (col-1)*10+row+1; }

MACHINE_DRIVER_START(PLAYMATIC)
  MDRV_IMPORT_FROM(PinMAME)
  MDRV_CPU_ADD_TAG("mcpu", CDP1802, 400000)
  MDRV_CPU_MEMORY(PLAYMATIC_readmem1, PLAYMATIC_writemem1)
  MDRV_CPU_PORTS(PLAYMATIC_readport1, PLAYMATIC_writeport1)
  MDRV_CPU_CONFIG(play1802_config)
  MDRV_CPU_PERIODIC_INT(PLAYMATIC_irq1, 800)
  MDRV_CPU_VBLANK_INT(PLAYMATIC_vblank1, 1)
  MDRV_CORE_INIT_RESET_STOP(PLAYMATIC1,NULL,NULL)
  MDRV_SWITCH_UPDATE(PLAYMATIC1)
  MDRV_SWITCH_CONV(play_sw2m, play_m2sw)
  MDRV_DIPS(3)
  MDRV_DIAGNOSTIC_LEDH(1)
  MDRV_NVRAM_HANDLER(generic_0fill)

  MDRV_SOUND_ADD(DISCRETE, play_tones)
MACHINE_DRIVER_END

MACHINE_DRIVER_START(PLAYMATIC2)
  MDRV_IMPORT_FROM(PinMAME)
  MDRV_CPU_ADD_TAG("mcpu", CDP1802, 2950000.0)
  MDRV_CPU_MEMORY(PLAYMATIC_readmem2, PLAYMATIC_writemem2)
  MDRV_CPU_PORTS(PLAYMATIC_readport2, PLAYMATIC_writeport2)
  MDRV_CPU_CONFIG(play1802_config)
  MDRV_CPU_PERIODIC_INT(PLAYMATIC_irq2, 2950000.0/8192.0)
  MDRV_TIMER_ADD(PLAYMATIC_zeroCross2, 100)
  MDRV_CPU_VBLANK_INT(PLAYMATIC_vblank2, 1)
  MDRV_CORE_INIT_RESET_STOP(PLAYMATIC2,NULL,NULL)
  MDRV_SWITCH_UPDATE(PLAYMATIC2)
  MDRV_SWITCH_CONV(play_sw2m, play_m2sw)
  MDRV_DIPS(24)
  MDRV_DIAGNOSTIC_LEDH(1)
  MDRV_NVRAM_HANDLER(generic_0fill)

  MDRV_SOUND_ADD(DISCRETE, play_tones)
MACHINE_DRIVER_END

// electronic sound section

static READ_HANDLER(ay8910_0_porta_r)	{ return 0; }
static READ_HANDLER(ay8910_1_porta_r)	{ return 0; }

struct AY8910interface play_ay8910 = {
	2,			/* 2 chips */
	NTSC_QUARTZ/2,	/* 1.79 MHz */
	{ 30, 30 },		/* Volume */
	{ ay8910_0_porta_r, ay8910_1_porta_r }
};

static WRITE_HANDLER(ay0_w) {
	AY8910Write(0,offset % 2,data);
}

static WRITE_HANDLER(ay1_w) {
	AY8910Write(1,offset % 2,data);
}

static WRITE_HANDLER(clk_snd) {
  printf("snd clk: %x\n", data);
}

static WRITE_HANDLER(out_snd) {
  printf("snd out: %x\n", data);
  cpu_set_irq_line(PLAYMATIC_SCPU, 0, data ? ASSERT_LINE : CLEAR_LINE);
}

static MEMORY_READ_START(playsound_readmem)
  {0x0000,0x1fff, MRA_ROM},
  {0x2000,0x2fff, MRA_ROM},
  {0x8000,0x80ff, MRA_RAM},
  {0xa000,0xbfff, MRA_ROM},
MEMORY_END

static MEMORY_WRITE_START(playsound_writemem)
  {0x0000,0x00ff, MWA_NOP},
  {0x4000,0x4fff, ay0_w},
  {0x6000,0x6fff, ay1_w},
  {0x8000,0x80ff, MWA_RAM},
MEMORY_END

static PORT_WRITE_START(playsound_writeport)
  {0x00, 0x00, clk_snd},
  {0x01, 0x01, out_snd},
MEMORY_END

static UINT8 snd_mode(void) { return CDP1802_MODE_RUN; }

static UINT8 snd_ef(void) {
//  int cmd = locals.sndCmd & 1;
//  locals.sndCmd >>= 1;
return 0x05;
//  return cmd;
}

static void snd_sc(int data) {
	locals.snd_sc = data;
}

static CDP1802_CONFIG play1802_snd_config =
{
	snd_mode,	// MODE
	snd_ef,		// EF
	snd_sc,		// SC
	NULL,		// Q
	NULL,		// DMA read
	NULL		// DMA write
};

MACHINE_DRIVER_START(PLAYMATIC2S)
  MDRV_IMPORT_FROM(PLAYMATIC2)

  MDRV_CPU_ADD_TAG("scpu", CDP1802, 2950000)
  MDRV_CPU_CONFIG(play1802_snd_config)
  MDRV_CPU_FLAGS(CPU_AUDIO_CPU)
  MDRV_CPU_MEMORY(playsound_readmem, playsound_writemem)
//  MDRV_CPU_PORTS(NULL, playsound_writeport)
  MDRV_SOUND_ADD(AY8910, play_ay8910)
MACHINE_DRIVER_END

MACHINE_DRIVER_START(PLAYMATIC3S)
  MDRV_IMPORT_FROM(PLAYMATIC2S)
  MDRV_CORE_INIT_RESET_STOP(PLAYMATIC3,NULL,NULL)
  MDRV_CPU_MODIFY("mcpu");
  MDRV_CPU_MEMORY(PLAYMATIC_readmem3, PLAYMATIC_writemem3)
MACHINE_DRIVER_END

MACHINE_DRIVER_START(PLAYMATIC4S)
  MDRV_IMPORT_FROM(PLAYMATIC3S)
  MDRV_CORE_INIT_RESET_STOP(PLAYMATIC4,NULL,NULL)
  MDRV_CPU_REPLACE("mcpu", CDP1802, NTSC_QUARTZ)
  MDRV_CPU_PERIODIC_INT(PLAYMATIC_irq2, NTSC_QUARTZ/8192.0)

  MDRV_CPU_REPLACE("scpu", CDP1802, NTSC_QUARTZ)
MACHINE_DRIVER_END
