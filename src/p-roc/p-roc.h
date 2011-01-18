#ifndef INC_PROC
#define INC_PROC

#include <p-roc/pinproc.h>
#include "time.h"

#define PROC_NUM_DMD_FRAMES 4

#define PROC_COIL_DRIVE_TIME 0  // Turn on indefinitely. Let PinMAME turn off.

#define PROC_LAMP_DRIVE_TIME 0  // Turn on indefinitely. Let PinMAME turn off.

#define kFlippersSection "PRFlippers"
#define kBumpersSection "PRBumpers"
#define kCoilsSection "PRCoils"
#define kSwitchesSection "PRSwitches"
#define kNumberField "number"
#define kPulseTimeField "pulseTime"
#define kPatterOnTimeField "patterOnTime"
#define kPatterOffTimeField "patterOffTime"
#define kBusField "bus"
#define kAuxPortValue "AuxPort"

#define kFlipperPulseTime (34)  // 34 ms
#define kFlipperPatterOnTime (1)  // 2 ms
#define kFlipperPatterOffTime (20)  // 2 ms
#define kBumperPulseTime (25)  // 25 ms

#ifdef __cplusplus
extern "C" {
#endif

// Display functions
void procDMDInit(void);
void procClearDMD(void);
void procDrawDot(int x, int y, int color);
void procDrawSegment(int x, int y, int seg);
void procFillDMDSubFrame(int frameIndex, UINT8 *dotData, int length);
void procReverseSubFrameBytes(int frameIndex);
void procUpdateDMD(void);
void procUpdateAlphaDisplay(UINT16 *top, UINT16 *bottom);
void procDisplayText(char *top, char *bottom);

// Gameitem functions
void procSetSwitchStates(void);
void procDriveLamp(int num, int state);
void procDriveCoil(int num, int state);
void procGetSwitchEvents(void);
void procInitializeCoilDrivers(void);
void procCheckActiveCoils(void);
void procConfigureDefaultSwitchRules(void);
void procConfigureDriverDefaults(void);
void procConfigureSwitchRules(void);
void procConfigureInputMap(void);

// Generic P-ROC functions.
int procInitialize(char *yaml_filename);
void procDeinitialize(void);
int procIsActive(void);
void procTickleWatchdog(void);
void procFlush(void);

int osd_is_proc_pressed(int code);

// Work around for MinGW with gcc 3.2.3
#if (__MINGW32__) && (__GNUC__) && (__GNUC__ < 4)
long double strtold(const char *__restrict__ nptr, char **__restrict__ endptr);
#endif  /* __MINGW32__, __GNUC__, __GNUC__ < 4 */

#ifdef __cplusplus
}
#endif

#endif  /* INC_PROC */
