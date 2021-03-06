#ifndef GTSS80S_H
#define GTSS80S_H

/* 
    Gottlieb System 80 Sound Boards
   
    - System 80/80A Sound Board 
   
    - System 80/80A Sound & Speech Board

    - System 80A Sound Board with a PiggyPack installed
	  (thanks goes to Peter Hall for providing some very usefull information)
   
    - System 80B Sound Board (3 generations)

*/

/* Gottlieb System 80/80A Sound Board */

/*-- Sound Board, 1 X 1K Sound Rom, 6530 System sound rom --*/
#define GTS80S1K_ROMSTART(n1,chk1,n2,chk2) \
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU1) \
	ROM_LOAD(n1, 0x0400,  0x0400, chk1) \
    ROM_RELOAD(  0x0800,  0x0400) \
	ROM_LOAD(n2, 0x0c00,  0x0400, chk2) \
    ROM_RELOAD(  0xfc00,  0x0400) /* reset vector */

/*-- Sound Board, 1 X 2K Sound Rom --*/
#define GTS80S2K_ROMSTART(n1,chk1) \
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU1) \
    ROM_LOAD(n1, 0x0800,  0x0800, chk1) \
    ROM_RELOAD(  0xf800,  0x0800)

/*-- Machine structure externals --*/
extern const struct Memory_ReadAddress  GTS80S_readmem[];
extern const struct Memory_WriteAddress GTS80S_writemem[];

#define GTS80S_SOUNDCPU { \
  CPU_M6502 | CPU_AUDIO_CPU, /* actually, it is an 6503 (6502 with only 12 address lines) */ \
  1000000, /* 1 MHz ??? */ \
  GTS80S_readmem, GTS80S_writemem, 0, 0, \
  ignore_interrupt, 0 \
}

/* Gottlieb System 80/80A Sound & Speech Board */

/*-- Sound & Speeh Board, 2 X 2K Voice/Sound Roms --*/
#define GTS80SS22_ROMSTART(n1,chk1,n2,chk2) \
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU1) \
	ROM_LOAD(n1, 0x7000,  0x0800, chk1) \
	ROM_LOAD(n2, 0x7800,  0x0800, chk2) 

/*-- Machine structure externals --*/
extern const struct Memory_ReadAddress  GTS80SS_readmem[];
extern const struct Memory_WriteAddress GTS80SS_writemem[];

#define GTS80SS_SOUNDCPU { \
  CPU_M6502 | CPU_AUDIO_CPU, \
  1000000, /* 1 MHz */ \
  GTS80SS_readmem, GTS80SS_writemem, 0, 0, \
  ignore_interrupt, 0 \
}

#define GTS80SS_SOUND \
VOTRAXINTERFACE, SAMPLESINTERFACE

/* Gottlieb System 80B Sound board Hardware Versions:
   -----------------------------------------
   ALL   - CPU: 2x(6502): DAC: 2x(AD7528)
   --------------------------------------
   Gen 1 - DSP: 2x(AY8913): OTHER: SP0-250 (SPEECH GENERATOR)    (Not Emulated)
   Gen 2 - DSP: 2x(AY8913): OTHER: Programmable Capacitor Filter (Not Emulated)
   Gen 3 - DSP: 1x(YM2151): OTHER: None
*/   

/*-- Sound rom macros --*/

/* Load 32k Rom Space */
#define GTS80BS_ROMLOAD32(start, n, chk) \
  ROM_LOAD(n, start,  0x8000, chk) 

/*-- Gen 1: 3 x 8K Sound CPU Roms --*/
#define GTS80BSSOUND888(n1,chk1,n2,chk2,n3,chk3) \
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU1) \
    ROM_LOAD(n1,0xe000,0x2000, chk1)\
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU2) \
    ROM_LOAD(n2,0xe000,0x2000, chk2)\
    ROM_LOAD(n3,0xc000,0x2000, chk3)

/*-- Gen 2 : 2 x 8K Sound CPU Roms --*/
#define GTS80BSSOUND88(n1,chk1,n2,chk2) \
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU1) \
	ROM_LOAD(n1,0xe000,0x2000, chk1)\
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU2) \
    ROM_LOAD(n2,0xe000,0x2000, chk2)

/*-- Gen 2 & 3: 2 x 32K Sound CPU Roms --*/
#define GTS80BSSOUND3232(n1,chk1,n2,chk2) \
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU1) \
    GTS80BS_ROMLOAD32(0x8000, n1, chk1) \
  SOUNDREGION(0x10000, GTS80_MEMREG_SCPU2) \
    GTS80BS_ROMLOAD32(0x8000, n2, chk2)

/*-- Machine structure externals --*/
extern const struct Memory_ReadAddress  GTS80BS1_readmem[];
extern const struct Memory_WriteAddress GTS80BS1_writemem[];
extern const struct Memory_ReadAddress  GTS80BS1_readmem2[];
extern const struct Memory_WriteAddress GTS80BS1_writemem2[];
extern const struct Memory_ReadAddress  GTS80BS2_readmem[];
extern const struct Memory_WriteAddress GTS80BS2_writemem[];
extern const struct Memory_ReadAddress  GTS80BS2_readmem2[];
extern const struct Memory_WriteAddress GTS80BS2_writemem2[];
extern const struct Memory_ReadAddress  GTS80BS3_readmem[];
extern const struct Memory_WriteAddress GTS80BS3_writemem[];
extern const struct Memory_ReadAddress  GTS80BS3_readmem2[];
extern const struct Memory_WriteAddress GTS80BS3_writemem2[];

extern struct DACinterface      GTS80BS_dacInt;
extern struct AY8910interface   GTS80BS_ay8910Int;
extern struct YM2151interface   GTS80BS_ym2151Int;
extern struct Samplesinterface	samples_interface;

/****************/
/* GENERATION 1 */
/****************/
#define GTS80BS1_SOUNDCPU1 ,{ \
  CPU_M6502 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  GTS80BS1_readmem, GTS80BS1_writemem, 0, 0, \
  ignore_interrupt, 0 \
}

#define GTS80BS1_SOUNDCPU2 ,{ \
  CPU_M6502 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  GTS80BS1_readmem2, GTS80BS1_writemem2, 0, 0, \
  ignore_interrupt, 0 \
}
#define GTS80BS1_SOUND \
{ SOUND_DAC,     &GTS80BS_dacInt }, \
{ SOUND_AY8910,  &GTS80BS_ay8910Int }, \
{ SOUND_SAMPLES, &samples_interface}

/****************/
/* GENERATION 2 */
/****************/
#define GTS80BS2_SOUNDCPU1 ,{ \
  CPU_M6502 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  GTS80BS2_readmem, GTS80BS2_writemem, 0, 0, \
  ignore_interrupt, 0 \
}
#define GTS80BS2_SOUNDCPU2 ,{ \
  CPU_M6502 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  GTS80BS2_readmem2, GTS80BS2_writemem2, 0, 0, \
  ignore_interrupt, 0 \
}
#define GTS80BS2_SOUND \
{ SOUND_DAC,     &GTS80BS_dacInt }, \
{ SOUND_AY8910,  &GTS80BS_ay8910Int }, \
{ SOUND_SAMPLES, &samples_interface}

/****************/
/* GENERATION 3 */
/****************/
#define GTS80BS3_SOUNDCPU1 ,{ \
  CPU_M6502 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  GTS80BS3_readmem, GTS80BS3_writemem, 0, 0, \
  ignore_interrupt, 0 \
}
#define GTS80BS3_SOUNDCPU2 ,{ \
  CPU_M6502 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  GTS80BS3_readmem2, GTS80BS3_writemem2, 0, 0, \
  ignore_interrupt, 0 \
}
#define GTS80BS3_SOUND \
{ SOUND_DAC,     &GTS80BS_dacInt }, \
{ SOUND_YM2151,  &GTS80BS_ym2151Int }, \
{ SOUND_SAMPLES, &samples_interface}

/*-- GTS3 --*/

/* Load 1Mb Rom(128K) to fit into 4Meg Rom Space */
#define GTS3S_ROMLOAD1(start, n, chk) \
  ROM_LOAD(n, start,  0x20000, chk) \
  ROM_RELOAD( start + 0x20000, 0x20000) \
  ROM_RELOAD( start + 0x40000, 0x20000) \
  ROM_RELOAD( start + 0x60000, 0x20000)

/* Load 2Mb Rom(256K) to fit into 4Meg Rom Space */
#define GTS3S_ROMLOAD2(start, n, chk) \
  ROM_LOAD(n, start,  0x40000, chk) \
  ROM_RELOAD( start + 0x40000, 0x40000)

/* Load 4Mb Rom(512K) */
#define GTS3S_ROMLOAD4(start, n, chk) \
  ROM_LOAD(n, start,  0x80000, chk)

/*-- 2 x 32K Sound CPU Roms --*/
//Purposely load in n2 first!
#define GTS3SOUND3232(n2,chk2,n1,chk1) \
  SOUNDREGION(0x10000, GTS3_MEMREG_DCPU1) \
    ROM_LOAD(n1, 0x8000,  0x8000, chk1) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU1) \
	ROM_LOAD(n2, 0x8000,  0x8000, chk2)

/*-- 2 x 32K Sound CPU Roms, 2 x 128K Voice Roms --*/
//Purposely load in n2 first!
#define GTS3SOUND32128(n2,chk2,n1,chk1,n3,chk3, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_DCPU1) \
    ROM_LOAD(n1, 0x8000,  0x8000, chk1) \
  SOUNDREGION(0x80000, GTS3_MEMREG_SROM1) \
	GTS3S_ROMLOAD1(0x0000, n3, chk3) \
	GTS3S_ROMLOAD1(0x0000, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU1) \
	ROM_LOAD(n2, 0x8000,  0x8000, chk2)

/*-- 2 x 32K Sound CPU Roms, 2 x 256K Voice Roms --*/
//Purposely load in n2 first!
#define GTS3SOUND32256A(n2,chk2,n1,chk1,n3,chk3, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_DCPU1) \
    ROM_LOAD(n1, 0x8000,  0x8000, chk1) \
  SOUNDREGION(0x80000, GTS3_MEMREG_SROM1) \
	GTS3S_ROMLOAD2(0x0000, n3, chk3) \
	GTS3S_ROMLOAD2(0x0000, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU1) \
	ROM_LOAD(n2, 0x8000,  0x8000, chk2)

/*-- 2 x 32K Sound CPU Roms, 2 x 256K Voice Roms --*/
//Purposely load in n2 first!
#define GTS3SOUND32256(n2,chk2,n1,chk1,n3,chk3, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU1) \
    ROM_LOAD(n1, 0x8000,  0x8000, chk1) \
  SOUNDREGION(0x80000, GTS3_MEMREG_SROM1) \
	GTS3S_ROMLOAD2(0x0000, n3, chk3) \
	GTS3S_ROMLOAD2(0x0000, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU2) \
	ROM_LOAD(n2, 0x8000,  0x8000, chk2)

/*-- 2 x 32K Sound CPU Roms, 1 x 512K, 1 x 256K Voice Roms --*/
//Purposely load in n2 first!
#define GTS3SOUND32512256(n2,chk2,n1,chk1,n3,chk3, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU1) \
    ROM_LOAD(n1, 0x8000,  0x8000, chk1) \
  SOUNDREGION(0x80000, GTS3_MEMREG_SROM1) \
	GTS3S_ROMLOAD4(0x0000, n3, chk3) \
	GTS3S_ROMLOAD2(0x0000, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU2) \
	ROM_LOAD(n2, 0x8000,  0x8000, chk2)

/*-- 2 x 32K Sound CPU Roms, 2 x 512K Voice Roms --*/
//Purposely load in n2 first!
#define GTS3SOUND32512(n2,chk2,n1,chk1,n3,chk3, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU1) \
    ROM_LOAD(n1, 0x8000,  0x8000, chk1) \
  SOUNDREGION(0x80000, GTS3_MEMREG_SROM1) \
	GTS3S_ROMLOAD4(0x0000, n3, chk3) \
	GTS3S_ROMLOAD4(0x0000, n4, chk4) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU2) \
	ROM_LOAD(n2, 0x8000,  0x8000, chk2)

#define GTS3_SOUND_ROMS_NOT_AVAILABLE \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU1) \
  SOUNDREGION(0x80000, GTS3_MEMREG_SROM1) \
  SOUNDREGION(0x10000, GTS3_MEMREG_SCPU2) 

/*-- Machine structure externals --*/
extern const struct Memory_ReadAddress  GTS3_sreadmem[];
extern const struct Memory_WriteAddress GTS3_swritemem[];
extern const struct Memory_ReadAddress  GTS3_sreadmem2[];
extern const struct Memory_WriteAddress GTS3_swritemem2[];

//Y-CPU
#define GTS3_SOUNDCPU1 ,{ \
  CPU_M65C02 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  GTS3_sreadmem, GTS3_swritemem, 0, 0, \
  ignore_interrupt, 0 \
}

//D-CPU
#define GTS3_SOUNDCPU2 ,{ \
  CPU_M65C02 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  GTS3_sreadmem2, GTS3_swritemem2, 0, 0, \
  ignore_interrupt, 0 \
}

extern struct OKIM6295interface GTS3_okim6295_interface;

#define GTS3_SOUND \
{ SOUND_YM2151,  &GTS80BS_ym2151Int }, \
{ SOUND_DAC,     &GTS80BS_dacInt }, \
{ SOUND_SAMPLES, &samples_interface}

#define GTS3_2_SOUND \
{ SOUND_YM2151,  &GTS80BS_ym2151Int }, \
{ SOUND_DAC,     &GTS80BS_dacInt }, \
{ SOUND_OKIM6295,&GTS3_okim6295_interface },\
{ SOUND_SAMPLES, &samples_interface}

#endif /* GTSS80S_H */
