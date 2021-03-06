#ifndef INC_DE1SOUND
#define INC_DE1SOUND

/*-- Sound rom macros --*/

/*-- 32K Sound CPU Rom, 2 X 64K Voice Roms --*/
#define DESOUND3264_ROMSTART(n1,chk1,n2,chk2,n3,chk3) \
  SOUNDREGION(0x10000, DE_MEMREG_SCPU1) \
    ROM_LOAD(n1, 0x8000,  0x8000, chk1) \
  SOUNDREGION(0x40000, DE_MEMREG_SROM1) \
	ROM_LOAD(n2, 0x0000,  0x10000, chk2) \
	ROM_RELOAD(  0x10000, 0x10000) \
	ROM_LOAD(n3, 0x20000, 0x10000, chk3) \
	ROM_RELOAD(  0x30000, 0x10000)
/*Redefined for games using a DMD*/
#define DESOUND3264D_ROMSTART(n1,chk1,n2,chk2,n3,chk3) \
  SOUNDREGION(0x10000, DE_MEMREG_SDCPU1) \
    ROM_LOAD(n1, 0x8000,  0x8000, chk1) \
  SOUNDREGION(0x40000, DE_MEMREG_SDROM1) \
	ROM_LOAD(n2, 0x0000,  0x10000, chk2) \
	ROM_RELOAD(  0x10000, 0x10000) \
	ROM_LOAD(n3, 0x20000, 0x10000, chk3) \
	ROM_RELOAD(  0x30000, 0x10000)


/*-- 32K Sound CPU Rom, 2 X 128K Voice Roms --*/
#define DESOUND32128_ROMSTART(n1,chk1,n2,chk2,n3,chk3) \
  SOUNDREGION(0x10000, DE_MEMREG_SCPU1) \
    ROM_LOAD(n1, 0x8000, 0x8000, chk1) \
  SOUNDREGION(0x40000, DE_MEMREG_SROM1) \
	ROM_LOAD(n2, 0x0000,  0x20000, chk2) \
	ROM_LOAD(n3, 0x20000, 0x20000, chk3) 
/*Redefined for games using a DMD*/
#define DESOUND32128D_ROMSTART(n1,chk1,n2,chk2,n3,chk3) \
  SOUNDREGION(0x10000, DE_MEMREG_SDCPU1) \
    ROM_LOAD(n1, 0x8000, 0x8000, chk1) \
  SOUNDREGION(0x40000, DE_MEMREG_SDROM1) \
	ROM_LOAD(n2, 0x0000,  0x20000, chk2) \
	ROM_LOAD(n3, 0x20000, 0x20000, chk3) 


/*-- Machine structure externals --*/
extern const struct Memory_ReadAddress  DE_sreadmem[];
extern const struct Memory_WriteAddress DE_swritemem[];

extern struct YM2151interface   DE_ym2151Int;
extern struct MSM5205interface  DE_msm5205Int;
extern struct Samplesinterface	samples_interface;

/*-- Sound interface communications --*/
extern void DE_sinit(int num);

#define DE_SOUNDCPU { \
  CPU_M6809 | CPU_AUDIO_CPU, \
  2000000, /* 2 MHz */ \
  DE_sreadmem, DE_swritemem, 0, 0, \
  ignore_interrupt, 0 \
}
  /*IRQ generated by YM2151
    FIRQ generated by Main CPU
	NMI generated by MSM5205*/

#define DE_SOUND \
{ SOUND_YM2151,  &DE_ym2151Int }, \
{ SOUND_MSM5205, &DE_msm5205Int }, \
{ SOUND_SAMPLES, &samples_interface}

#endif /* INC_DE1SOUND */
