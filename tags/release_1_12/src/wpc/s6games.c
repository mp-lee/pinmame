#include "driver.h"
#include "sim.h"
#include "wmssnd.h"
#include "s6.h"

#define INITGAME(name, disp) \
static core_tGameData name##GameData = { GEN_S6, disp }; \
static void init_##name(void) { core_gameData = &name##GameData; }

#define INITGAMEFULL(name, disp,lflip,rflip,ss17,ss18,ss19,ss20,ss21,ss22) \
static core_tGameData name##GameData = { GEN_S6, disp, {FLIP_SWNO(lflip,rflip)}, \
 NULL, {{0}},{0,{ss17,ss18,ss19,ss20,ss21,ss22}}}; \
static void init_##name(void) { core_gameData = &name##GameData; }

S6_INPUT_PORTS_START(s6, 1) S6_INPUT_PORTS_END

/*--------------------------------
/ Laser Ball - Sys.6 (Game #493)
/-------------------------------*/
INITGAME(lzbal,s6_6digit_disp)
S6_ROMSTART(lzbal,l2, "gamerom.716", 0x9c5ffe2f,
                      "green1.716",  0x2145f8ab,
                      "green2.716",  0x1c978a4a)
S67S_SOUNDROMS8(      "sound1.716",  0xf4190ca3)
S6_ROMEND
#define input_ports_lzbal input_ports_s6
CORE_GAMEDEF(lzbal,l2,"Laser Ball (L-2)",1979,"Williams",s6_mS6S,0)

/*-----------------------------
/ Scorpion - Sys.6 (Game #494)
/----------------------------*/
INITGAMEFULL(scrpn,s6_6digit_disp,0,17,23,24,22,0,39,40)
S6_ROMSTART(scrpn,l1,  "gamerom.716", 0x881109a9,
                       "green1.716",  0x2145f8ab,
                       "green2.716",  0x1c978a4a)
S67S_SOUNDROMS8(       "sound1.716",  0xf4190ca3)
S6_ROMEND
#define input_ports_scrpn input_ports_s6
CORE_GAMEDEF(scrpn,l1,"Scorpion (L-1)",1980,"Williams",s6_mS6S,0)


/*----------------------------
/ Blackout - Sys.6 (Game #495)
/---------------------------*/
INITGAMEFULL(blkou,s6_6digit_disp,0,46,22,21,23,44,43,0)
S6_ROMSTART(blkou,l1,  "gamerom.716", 0x04b407ae2,
                       "green1.716",  0x2145f8ab,
                       "green2.716",  0x1c978a4a)
S67S_SOUNDROMS8(       "sound2.716",  0xc9103a68)
S67S_SPEECHROMS000x(   "v_ic7.532" ,  0x087864071,
                       "v_ic5.532" ,  0x0046a96d8,
                       "v_ic6.532" ,  0x00104e5c4)
S6_ROMEND
#define input_ports_blkou input_ports_s6
CORE_GAMEDEF(blkou,l1,"Blackout (L-1)",1979,"Williams",s6_mS6S,0)


/*--------------------------
/ Gorgar - Sys.6 (Game #496)
/-------------------------*/
INITGAMEFULL(grgar,s6_6digit_disp,0,0,38,37,39,12,36,0)
S6_ROMSTART(grgar,l1,  "gamerom.716", 0x1c6f3e48,
                       "green1.716",  0x2145f8ab,
                       "green2.716",  0x1c978a4a)
S67S_SOUNDROMS8(       "sound2.716",  0xc9103a68)
S67S_SPEECHROMS000x(   "v_ic7.532" ,  0x0b1879e3,
                       "v_ic5.532" ,  0x0ceaef37,
                       "v_ic6.532" ,  0x218290b9)
S6_ROMEND
#define input_ports_grgar input_ports_s6
CORE_GAMEDEF(grgar,l1,"Gorgar (L-1)",1979,"Williams",s6_mS6S,0)


/*-------------------------------
/ Firepower - Sys.6 (Game #497)
/------------------------------*/
INITGAMEFULL(frpwr,s6_6digit_disp,0,45,26,25,27,28,42,12)
S6_ROMSTARTPROM(frpwr,l2, "gamerom.716", 0xfdd3b983,
                          "green1.716",  0x2145f8ab,
                          "green2.716",  0x1c978a4a,
                          "prom1.474",   0xfbb7299f,
                          "prom2.474",   0xf75ade1a,
                          "prom3.474",   0x242ec687)
S67S_SOUNDROMS8(          "sound3.716",  0x55a10d13)
S67S_SPEECHROMS000x(      "v_ic7.532",   0x94c5c0a7,
                          "v_ic5.532",   0x1737fdd2,
                          "v_ic6.532",   0xe56f7aa2)
S6_ROMEND
#define input_ports_frpwr input_ports_s6
CORE_GAMEDEF(frpwr,l2,"Firepower (L-2)",1980,"Williams",s6_mS6S,0)

/* Following games used a 7 segment display */

/*--------------------------
/ Algar - Sys.6 (Game #499)
/-------------------------*/
INITGAMEFULL(algar,s6_7digit_disp,0,50,47,48,49,10,38,36)
S6_ROMSTART(algar,l1, "gamerom.716", 0x06711da23,
                      "green1.716",  0x2145f8ab,
                      "green2.716",  0x1c978a4a)
S67S_SOUNDROMS8(      "sound.716",   0x067ea12e7)
S6_ROMEND
#define input_ports_algar input_ports_s6
CORE_GAMEDEF(algar,l1,"Algar (L-1)",1980,"Williams",s6_mS6S,0)

/*-------------------------------
/ Alien Poker - Sys.6 (Game #501)
/-------------------------------*/
INITGAMEFULL(alpok,s6_7digit_disp,0,43,35,37,36,38,0,13)
S6_ROMSTART(alpok,l2, "gamerom.716", 0x020538a4a,
                      "green1.716",  0x2145f8ab,
                      "green2.716",  0x1c978a4a)
S67S_SOUNDROMS8(      "sound2.716",  0x055a10d13)
S67S_SPEECHROMS000x(  "v_ic7.532" ,  0x0a66c7ca6,
                      "v_ic5.532" ,  0x0f16a237a,
                      "v_ic6.532" ,  0x015a3cc85)
S6_ROMEND
#define input_ports_alpok input_ports_s6
CORE_GAMEDEF(alpok,l2,"Alien Poker (L-2)",1980,"Williams",s6_mS6S,0)