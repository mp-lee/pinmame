#include "driver.h"
#include "sim.h"
#include "midway.h"

#define INITGAMEP(name, disptype, balls) \
	MIDWAYP_INPUT_PORTS_START(name, balls) MIDWAY_INPUT_PORTS_END \
	static core_tGameData name##GameData = {0,disptype,{FLIP_SW(FLIP_L),0,0}}; \
	static void init_##name(void) { \
		core_gameData = &name##GameData; \
	}

#define INITGAME(name, disptype, balls) \
	MIDWAY_INPUT_PORTS_START(name, balls) MIDWAY_INPUT_PORTS_END \
	static core_tGameData name##GameData = {0,disptype,{FLIP_SW(FLIP_L),0,-1}}; \
	static void init_##name(void) { \
		core_gameData = &name##GameData; \
	}

/*-------------------------------------------------------------------
/ Flicker (Prototype, 09/1974)
/-------------------------------------------------------------------*/
core_tLCDLayout flicker_disp[] = {
  {0, 0, 0,6,CORE_SEG7}, {0,14, 7,6,CORE_SEG7},
  {3, 4,14,2,CORE_SEG7}, {3,12, 6,1,CORE_SEG7},
  {3,18,13,1,CORE_SEG7}, {3,20,16,1,CORE_SEG7}, {0}
};
INITGAMEP(flicker, flicker_disp, 1)
MIDWAY_1_ROMSTART(flicker,"flicker.rom", CRC(c692e586) SHA1(5cabb28a074d18b589b5b8f700c57e1610071c68))
MIDWAY_ROMEND
CORE_GAMEDEFNV(flicker,"Flicker (Prototype)",1974,"Nutting Associates",gl_mMIDWAYP,GAME_USES_CHIMES)

/*-------------------------------------------------------------------
/ Rotation VIII (09/1978)
/-------------------------------------------------------------------*/
core_tLCDLayout rot_disp[] = {
  {0, 0, 0, 6,CORE_SEG7}, {0,16, 7, 6,CORE_SEG7},
  {2, 0,14, 6,CORE_SEG7}, {2,16,21, 6,CORE_SEG7},
  {4, 8,35, 6,CORE_SEG7}, {0}
};
INITGAME(rotation, rot_disp, 1)
MIDWAY_3_ROMSTART(rotation,	"rot-a117.dat",	CRC(7bb6beb3) SHA1(5ee62246032158c68d426c11a4a9a889ee7655d7),
							"rot-b117.dat",	CRC(538e37b2) SHA1(d283ac4d0024388b92b6494fcde63957b705bf48),
							"rot-c117.dat",	CRC(3321ff08) SHA1(d6d94fea27ef58ca648b2829b32d62fcec108c9b))
MIDWAY_ROMEND
CORE_GAMEDEFNV(rotation,"Rotation VIII",1978,"Midway",gl_mMIDWAY,GAME_NO_SOUND)
