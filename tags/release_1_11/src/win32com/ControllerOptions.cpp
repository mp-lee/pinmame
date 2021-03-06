#include "stdafx.h"
#include "VPinMAME.h"

#include "Controller.h"
#include "ControllerOptions.h"
#include "ControllerRegKeys.h"

extern "C" {
#include "mame.h"
#include "driver.h"
#include "registry.h"
}

// all options are save to the registry; saving to other locations is possible
// by only changing GetOptions(), PutOptions() and DelOptions()

void GetDefaultOptions(PCONTROLLEROPTIONS pControllerOptions) {
	pControllerOptions->nGameNo = -1;
	lstrcpy(pControllerOptions->szROMName, "");
	lstrcpy(pControllerOptions->szDescription, "");

	pControllerOptions->fUseCheat = (REG_DWUSECHEATDEF!=0);
	pControllerOptions->fUseSound = (REG_DWUSESOUNDDEF!=0);
	pControllerOptions->fUseSamples = (REG_DWUSESAMPLESDEF!=0);
	pControllerOptions->fCompactSize = (REG_DWCOMPACTSIZEDEF!=0);
	// WPCMAME
	pControllerOptions->fDoubleSize = (REG_DWDOUBLESIZEDEF!=0);
	pControllerOptions->nSampleRate = REG_DWSAMPLERATEDEF;
	pControllerOptions->nAntiAlias = REG_DWANTIALIASDEF;
	// End
	pControllerOptions->nDMDRED   = REG_DWDMDREDDEF;
	pControllerOptions->nDMDGREEN = REG_DWDMDGREENDEF;
	pControllerOptions->nDMDBLUE  = REG_DWDMDBLUEDEF;
	pControllerOptions->nDMDPERC66 = REG_DWDMDPERC66DEF;
	pControllerOptions->nDMDPERC33 = REG_DWDMDPERC33DEF;
	pControllerOptions->nDMDPERC0 = REG_DWDMDPERC0DEF;

	pControllerOptions->nBorderSizeX = 4;
	pControllerOptions->nBorderSizeY = 4;
	pControllerOptions->nWindowPosX  = -1;
	pControllerOptions->nWindowPosY  = -1;

	pControllerOptions->fSpeedLimit = (REG_DWSPEEDLIMITDEF!=0);
}

/* get game options, if not found use the default options */
/* if a options set is not found it will be created using the default, */
/* or at least predefined options */
/* szROMName name must be set and will be used */
BOOL GetOptions(PCONTROLLEROPTIONS pControllerOptions, char* pszROMName) {

	if ( !pControllerOptions )
		return false;

	// clear all
	memset(pControllerOptions, 0, sizeof pControllerOptions);
	int nGameNo = -1;

	// dealing with default options?
	if ( !pszROMName || !*pszROMName ) {
		// load hardcoded defaults
		GetDefaultOptions(pControllerOptions);
	}
	else if ( (nGameNo=GetGameNumFromString(pszROMName))>=0 ) {
		// load the default options
		GetOptions(pControllerOptions, NULL);

		pControllerOptions->nGameNo = nGameNo;

		// just for information
		lstrcpy(pControllerOptions->szROMName, pszROMName);
		lstrcpy(pControllerOptions->szDescription, drivers[pControllerOptions->nGameNo]->description);
	}
	else 
		return false;

	char szKey[MAX_PATH];
	GetGameRegistryKey(szKey, pszROMName);

	HKEY hKey;
   	if ( RegOpenKeyEx(HKEY_CURRENT_USER, szKey, 0, KEY_QUERY_VALUE, &hKey)!=ERROR_SUCCESS ) 
		// go with the previous loaded default options
		return true;

	DWORD dwValue;
	DWORD dwType;
	DWORD dwSize;

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWUSECHEAT, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) 
		pControllerOptions->fUseCheat = (dwValue!=0);

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWUSESOUND, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) 
		pControllerOptions->fUseSound = (dwValue!=0);

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWUSESAMPLES, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) 
		pControllerOptions->fUseSamples = (dwValue!=0);

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWCOMPACTSIZE, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) 
		pControllerOptions->fCompactSize = (dwValue!=0);

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWDOUBLESIZE, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) 
		pControllerOptions->fDoubleSize = (dwValue!=0);

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWANTIALIAS, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) 
		pControllerOptions->nAntiAlias = dwValue;

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWSAMPLERATE, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) 
		pControllerOptions->nSampleRate = dwValue;

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWDMDRED, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) {
		if ( dwValue>255 )
			dwValue = REG_DWDMDREDDEF;
		pControllerOptions->nDMDRED = (int) dwValue;
	}

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWDMDGREEN, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) {
		if ( dwValue>255 )
			dwValue = REG_DWDMDGREENDEF;
		pControllerOptions->nDMDGREEN = (int) dwValue;
	}

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWDMDBLUE, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) {
		if ( dwValue>255 )
			dwValue = REG_DWDMDBLUEDEF;
		pControllerOptions->nDMDBLUE = (int) dwValue;
	}

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWDMDPERC66, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS )  {
		if ( dwValue>100 )
			dwValue = REG_DWDMDPERC66DEF;
		pControllerOptions->nDMDPERC66 = (int) dwValue;
	}

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWDMDPERC33, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS )  {
		if ( dwValue>100 )
			dwValue = REG_DWDMDPERC33DEF;
		pControllerOptions->nDMDPERC33 = (int) dwValue;
	}

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWDMDPERC0, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS )  {
		if ( dwValue>100 )
			dwValue = REG_DWDMDPERC0DEF;
		pControllerOptions->nDMDPERC0 = (int) dwValue;
	}

	dwType = REG_DWORD;
	dwSize = sizeof dwValue;
    if ( RegQueryValueEx(hKey, REG_DWSPEEDLIMIT, 0, &dwType, (LPBYTE) &dwValue, &dwSize)==ERROR_SUCCESS ) 
		pControllerOptions->fSpeedLimit = (dwValue!=0);

	RegCloseKey(hKey);

	return true;
}

BOOL PutOptions(PCONTROLLEROPTIONS pControllerOptions, char* pszROMName) {

	if ( !pControllerOptions )
		return false;

	char szKey[MAX_PATH];
	GetGameRegistryKey(szKey, pszROMName);

	HKEY hKey;
	DWORD dwDisposition;
   	if ( RegCreateKeyEx(HKEY_CURRENT_USER, szKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_SET_VALUE, NULL, &hKey, &dwDisposition)!=ERROR_SUCCESS )
		return false;
	
	DWORD dwValue;

	dwValue = pControllerOptions->fUseCheat? 1:0;
    RegSetValueEx(hKey, REG_DWUSECHEAT, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = pControllerOptions->fUseSound? 1:0;
    RegSetValueEx(hKey, REG_DWUSESOUND, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = pControllerOptions->fUseSamples? 1:0;
    RegSetValueEx(hKey, REG_DWUSESAMPLES, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = pControllerOptions->fCompactSize? 1:0;
    RegSetValueEx(hKey, REG_DWCOMPACTSIZE, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = pControllerOptions->fDoubleSize? 1:0;
    RegSetValueEx(hKey, REG_DWDOUBLESIZE, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = (DWORD) pControllerOptions->nAntiAlias;
    RegSetValueEx(hKey, REG_DWANTIALIAS, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = (DWORD) pControllerOptions->nSampleRate;
    RegSetValueEx(hKey, REG_DWSAMPLERATE, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = (DWORD) pControllerOptions->nDMDRED;
    RegSetValueEx(hKey, REG_DWDMDRED, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = (DWORD) pControllerOptions->nDMDBLUE;
    RegSetValueEx(hKey, REG_DWDMDBLUE, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = (DWORD) pControllerOptions->nDMDGREEN;
    RegSetValueEx(hKey, REG_DWDMDGREEN, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = (DWORD) pControllerOptions->nDMDPERC66;
    RegSetValueEx(hKey, REG_DWDMDPERC66, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = (DWORD) pControllerOptions->nDMDPERC33;
    RegSetValueEx(hKey, REG_DWDMDPERC33, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = (DWORD) pControllerOptions->nDMDPERC0;
    RegSetValueEx(hKey, REG_DWDMDPERC0, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	dwValue = pControllerOptions->fSpeedLimit? 1:0;
    RegSetValueEx(hKey, REG_DWSPEEDLIMIT, 0, REG_DWORD, (LPBYTE) &dwValue, sizeof dwValue);

	RegCloseKey(hKey);

	return true;
}

void DelOptions(char* pszROMName)
{
	char szKey[MAX_PATH];
	lstrcpy(szKey, REG_BASEKEY);

	HKEY hKey;
   	if ( RegOpenKeyEx(HKEY_CURRENT_USER, szKey, 0, KEY_WRITE, &hKey)!=ERROR_SUCCESS )
		return;

	if ( !pszROMName || !*pszROMName )
		RegDeleteKey(hKey, REG_DEFAULT);
	else
		RegDeleteKey(hKey, pszROMName);
		
	RegCloseKey(hKey);
}

void GetPathes(PCONTROLLERPATHES pControllerPathes)
{
	if ( !pControllerPathes )
		return;

	BOOL fNew = FALSE;
	BOOL fDeleteOld = FALSE;

	// initialize all
	char szInstallDir[MAX_PATH];
	GetInstallDir(szInstallDir, sizeof szInstallDir);

	lstrcpy(pControllerPathes->szRomDirs, szInstallDir);
	lstrcat(pControllerPathes->szRomDirs, REG_SZROMDIRS_DEF);
	
	lstrcpy(pControllerPathes->szCfgDir, szInstallDir);
	lstrcat(pControllerPathes->szCfgDir, REG_SZCFGDIR_DEF);

	lstrcpy(pControllerPathes->szNVRamDir, szInstallDir);
	lstrcat(pControllerPathes->szNVRamDir, REG_SZNVRAMDIR_DEF);

	lstrcpy(pControllerPathes->szSampleDirs, szInstallDir);
	lstrcat(pControllerPathes->szSampleDirs, REG_SZSAMPLEDIRS_DEF);

	lstrcpy(pControllerPathes->szImgDir, szInstallDir);
	lstrcat(pControllerPathes->szImgDir, REG_SZIMGDIRDIR_DEF);

	char szKey[MAX_PATH];
	lstrcpy(szKey, REG_BASEKEY);
	lstrcat(szKey, "\\");
	lstrcat(szKey, REG_GLOBALS);

	HKEY hKey;
   	if ( RegOpenKeyEx(HKEY_CURRENT_USER, szKey, 0, KEY_QUERY_VALUE, &hKey)!=ERROR_SUCCESS ) {
		lstrcpy(szKey, REG_BASEKEY);
		lstrcat(szKey, "\\");
		lstrcat(szKey, REG_DEFAULT);
   		if ( RegOpenKeyEx(HKEY_CURRENT_USER, szKey, 0, KEY_WRITE|KEY_QUERY_VALUE, &hKey)!=ERROR_SUCCESS ) {
			PutPathes(pControllerPathes);
			return;
		}
		
		fNew = FALSE;
		fDeleteOld = TRUE;
	}

	DWORD dwType;
	DWORD dwSize;
	char  szValue[MAX_PATH];

	dwType = REG_SZ;
 	dwSize = sizeof szValue; 
    if ( RegQueryValueEx(hKey, REG_SZROMDIRS, 0, &dwType, (LPBYTE) &szValue, &dwSize)==ERROR_SUCCESS ) 
		lstrcpy(pControllerPathes->szRomDirs, szValue);
	else
		fNew = TRUE;

	dwType = REG_SZ;
 	dwSize = sizeof szValue; 
    if ( RegQueryValueEx(hKey, REG_SZCFGDIR, 0, &dwType, (LPBYTE) &szValue, &dwSize)==ERROR_SUCCESS ) 
		lstrcpy(pControllerPathes->szCfgDir, szValue);
	else
		fNew = TRUE;

	dwType = REG_SZ;
 	dwSize = sizeof szValue; 
    if ( RegQueryValueEx(hKey, REG_SZNVRAMDIR, 0, &dwType, (LPBYTE) &szValue, &dwSize)==ERROR_SUCCESS ) 
		lstrcpy(pControllerPathes->szNVRamDir, szValue);
	else
		fNew = TRUE;

	dwType = REG_SZ;
 	dwSize = sizeof szValue; 
    if ( RegQueryValueEx(hKey, REG_SZSAMPLEDIRS, 0, &dwType, (LPBYTE) &szValue, &dwSize)==ERROR_SUCCESS ) 
		lstrcpy(pControllerPathes->szSampleDirs, szValue);
	else
		fNew = TRUE;

	dwType = REG_SZ;
 	dwSize = sizeof szValue;   
    if ( RegQueryValueEx(hKey, REG_SZIMGDIRDIR, 0, &dwType, (LPBYTE) &szValue, &dwSize)==ERROR_SUCCESS ) 
		lstrcpy(pControllerPathes->szImgDir, szValue);
	else
		fNew = TRUE;

	if ( fDeleteOld ) {
		RegDeleteValue(hKey, REG_SZROMDIRS);
		RegDeleteValue(hKey, REG_SZCFGDIR);
		RegDeleteValue(hKey, REG_SZNVRAMDIR);
		RegDeleteValue(hKey, REG_SZSAMPLEDIRS);
		RegDeleteValue(hKey, REG_SZIMGDIRDIR);
	}

	RegCloseKey(hKey);

	if ( fNew )
		PutPathes(pControllerPathes);

}

void PutPathes(PCONTROLLERPATHES pControllerPathes)
{
	char szKey[MAX_PATH];
	lstrcpy(szKey, REG_BASEKEY);
	lstrcat(szKey, "\\");
	lstrcat(szKey, REG_GLOBALS);

	HKEY hKey;
	DWORD dwDisposition;
   	if ( RegCreateKeyEx(HKEY_CURRENT_USER, szKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_SET_VALUE, NULL, &hKey, &dwDisposition)!=ERROR_SUCCESS )
		return;
	
    RegSetValueEx(hKey, REG_SZROMDIRS, 0, REG_SZ, (LPBYTE) &pControllerPathes->szRomDirs, lstrlen(pControllerPathes->szRomDirs)+1);
    RegSetValueEx(hKey, REG_SZCFGDIR, 0, REG_SZ, (LPBYTE) &pControllerPathes->szCfgDir, lstrlen(pControllerPathes->szCfgDir)+1);
    RegSetValueEx(hKey, REG_SZNVRAMDIR, 0, REG_SZ, (LPBYTE) &pControllerPathes->szNVRamDir, lstrlen(pControllerPathes->szNVRamDir)+1);
    RegSetValueEx(hKey, REG_SZSAMPLEDIRS, 0, REG_SZ, (LPBYTE) &pControllerPathes->szSampleDirs, lstrlen(pControllerPathes->szSampleDirs)+1);
    RegSetValueEx(hKey, REG_SZIMGDIRDIR, 0, REG_SZ, (LPBYTE) &pControllerPathes->szImgDir, lstrlen(pControllerPathes->szImgDir)+1);

	RegCloseKey(hKey);
}

void DelPathes()
{
	char szKey[MAX_PATH];
	lstrcpy(szKey, REG_BASEKEY);

	HKEY hKey;
   	if ( RegOpenKeyEx(HKEY_CURRENT_USER, szKey, 0, KEY_WRITE, &hKey)!=ERROR_SUCCESS )
		return;

	RegDeleteKey(hKey, REG_GLOBALS);

	RegCloseKey(hKey);
}


/*Determine Game # from Given GameName String*/
int GetGameNumFromString(char *name)
{
	int gamenum = 0;
	while (drivers[gamenum]) {
		if ( !strcmpi(drivers[gamenum]->name, name) )
			break;
		gamenum++;
	}
	if ( !drivers[gamenum] )
		return -1;
	else
		return gamenum;
}

char* GetInstallDir(char *pszInstallDir, int iSize)
{
	if ( !pszInstallDir )
		return NULL;

	GetModuleFileName(_Module.m_hInst, pszInstallDir, iSize);

	char *lpHelp = pszInstallDir;
	char *lpSlash = NULL;
	while ( *lpHelp ) {
		if ( *lpHelp=='\\' )
			lpSlash = lpHelp;
		lpHelp++;
	}
	if ( lpSlash )
		*lpSlash = '\0';

	return pszInstallDir;
}

char* GetGameRegistryKey(char *pszRegistryKey, char* pszROMName)
{
	if ( !pszRegistryKey )
		return NULL;

	lstrcpy(pszRegistryKey, REG_BASEKEY);
	lstrcat(pszRegistryKey, "\\");

	// dealing with default options?
	if ( !pszROMName || !*pszROMName ) 
		lstrcat(pszRegistryKey, REG_DEFAULT);
	else if ( GetGameNumFromString(pszROMName)>=0 ) 
		lstrcat(pszRegistryKey, pszROMName);
	else 
		lstrcpy(pszRegistryKey, "");

	return pszRegistryKey;
}

BOOL GameUsedTheFirstTime(char* pszROMName)
{
	char szKey[MAX_PATH];
	GetGameRegistryKey(szKey, pszROMName);

	if ( !szKey[0] )
		return false;

	HKEY hKey;
   	if ( RegOpenKeyEx(HKEY_CURRENT_USER, szKey, 0, KEY_QUERY_VALUE, &hKey)!=ERROR_SUCCESS ) {
		DWORD dwDisposition;
   		if ( RegCreateKeyEx(HKEY_CURRENT_USER, szKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_SET_VALUE, NULL, &hKey, &dwDisposition)==ERROR_SUCCESS )
			RegCloseKey(hKey);
		return true;
	}

	return false;
}

BOOL GameWasNeverStarted(char* pszROMName)
{
	char szKey[MAX_PATH];
	GetGameRegistryKey(szKey, pszROMName);

	if ( !szKey[0] )
		return true;

	return ReadRegistry(szKey, "", 0)==0;
}

void SetGameWasStarted(char* pszROMName)
{
	char szKey[MAX_PATH];
	GetGameRegistryKey(szKey, pszROMName);

	if ( !szKey[0] )
		return;

	WriteRegistry(szKey, "", 1);
}
