# Microsoft Developer Studio Project File - Name="PinMAME32" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=PinMAME32 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "PinMAME32.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "PinMAME32.mak" CFG="PinMAME32 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "PinMAME32 - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "PinMAME32 - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj/PinMAME32/Release"
# PROP Intermediate_Dir "obj/PinMAME32/Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /O2 /I "src\htmlhelp" /I "src" /I "src\wpc" /I "src\zlib" /I "src\vc" /I "src\windows" /I "src\htmlhelp\include" /D "NDEBUG" /D WINUI=1 /D SUFFIX=32 /D _WIN32_IE=0x0500 /D _WIN32_WINNT=0x0400 /D "WIN32" /D "_CONSOLE" /D LSB_FIRST=1 /D CLIB_DECL=__cdecl /D DECL_SPEC=__cdecl /D inline=__inline /D __inline__=__inline /D INLINE=__inline /D DIRECTINPUT_VERSION=0x0500 /D DIRECTDRAW_VERSION=0x0300 /D "NONAMELESSUNION" /D "_WINDOWS" /D "ZLIB_DLL" /D MAMEVER=7300 /D "PINMAME" /D MAME32NAME=\"PinMAME32\" /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG" /d _WIN32_IE=0x0400
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 htmlhelp.lib kernel32.lib user32.lib gdi32.lib winmm.lib dxguid.lib ddraw.lib dinput.lib dsound.lib advapi32.lib comdlg32.lib comctl32.lib shell32.lib zlibstatmt.lib /nologo /subsystem:windows /machine:I386 /libpath:"src/htmlhelp/lib" /libpath:"zlib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "obj/PinMAME32/Debug"
# PROP Intermediate_Dir "obj/PinMAME32/Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /ZI /Od /I "src" /I "src\wpc" /I "src\zlib" /I "src\vc" /I "src\windows" /I "src\htmlhelp\include" /D "_DEBUG" /D "MAME_DEBUG" /D WINUI=1 /D SUFFIX=32 /D _WIN32_IE=0x0500 /D _WIN32_WINNT=0x0400 /D "WIN32" /D "_CONSOLE" /D LSB_FIRST=1 /D CLIB_DECL=__cdecl /D DECL_SPEC=__cdecl /D inline=__inline /D __inline__=__inline /D INLINE=__inline /D DIRECTINPUT_VERSION=0x0500 /D DIRECTDRAW_VERSION=0x0300 /D "NONAMELESSUNION" /D "_WINDOWS" /D "ZLIB_DLL" /D MAMEVER=7300 /D "PINMAME" /D MAME32NAME=\"PinMAME32\" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG" /d _WIN32_IE=0x0400
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 htmlhelp.lib kernel32.lib user32.lib gdi32.lib winmm.lib dxguid.lib ddraw.lib dinput.lib dsound.lib advapi32.lib comdlg32.lib comctl32.lib shell32.lib zlibstatmtd.lib /nologo /subsystem:windows /debug /machine:I386 /out:"PinMAME32d.exe" /pdbtype:sept /libpath:"src/htmlhelp/lib" /libpath:"zlib"
# SUBTRACT LINK32 /pdb:none
# Begin Custom Build - Generating gamelist.txt
TargetDir=.
TargetPath=.\PinMAME32d.exe
InputPath=.\PinMAME32d.exe
SOURCE="$(InputPath)"

"$(TargetDir)\gamelist.txt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	$(TargetPath) -gamelist -noclones -sortname > "$(TargetDir)\gamelist.txt"

# End Custom Build

!ENDIF 

# Begin Target

# Name "PinMAME32 - Win32 Release"
# Name "PinMAME32 - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter ""
# Begin Group "MAME"

# PROP Default_Filter ""
# Begin Group "CPU"

# PROP Default_Filter ""
# Begin Group "ADSP2100"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\adsp2100\2100dasm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\adsp2100\2100ops.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\cpu\adsp2100\adsp2100.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\adsp2100\adsp2100.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "M6809"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\m6809\6809dasm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6809\6809ops.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6809\6809tbl.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6809\m6809.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6809\m6809.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "M6800"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\m6800\6800dasm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6800\6800ops.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6800\6800tbl.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6800\m6800.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6800\m6800.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "Z80"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\z80\z80.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\z80\z80.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\z80\z80daa.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\z80\z80dasm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\z80\z80dasm.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "M6502"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\m6502\6502dasm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\ill02.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\m6502.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\m6502.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\m65ce02.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\ops02.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\opsc02.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\opsn2a03.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\t6502.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\cpu\m6502\t65c02.c
# PROP Exclude_From_Build 1
# End Source File
# End Group
# Begin Group "M68000"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\m68000\cpudefs.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68000.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68k.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kconf.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kcpu.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kcpu.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kdasm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kmake.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kmame.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kmame.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kopac.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kopdm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kopnz.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kops.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\m68000\m68kops.h
# End Source File
# End Group
# Begin Group "S2650"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\s2650\2650dasm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\s2650\s2650.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\s2650\s2650.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpu\s2650\s2650cpu.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "I8085"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\i8085\8085dasm.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i8085\i8085.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i8085\i8085.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i8085\i8085cpu.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i8085\i8085daa.h
# End Source File
# End Group
# Begin Group "I8039"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\i8039\8039dasm.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i8039\i8039.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i8039\i8039.h
# End Source File
# End Group
# Begin Group "I86"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\i86\ea.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\host.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\i186intf.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\i188intf.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\i86.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\i86.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\i86dasm.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\i86intf.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\i86time.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\instr186.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\instr86.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\instr86.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\modrm.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\table186.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i86\table86.h
# End Source File
# End Group
# Begin Group "I4004"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\i4004\4004dasm.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i4004\i4004.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i4004\i4004.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i4004\i4004cpu.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i4004\i4004daa.h
# End Source File
# End Group
# Begin Group "PPS4"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\pps4\pps4.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\pps4\pps4.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\pps4\pps4cpu.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\pps4\pps4dasm.c
# End Source File
# End Group
# Begin Group "SCAMP"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\scamp\scamp.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\scamp\scamp.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\scamp\scampdsm.c
# End Source File
# End Group
# Begin Group "I8051"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\i8051\8051dasm.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i8051\i8051.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\i8051\i8051.h
# End Source File
# End Group
# Begin Group "TMS7000"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\tms7000\7000dasm.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms7000\tms7000.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms7000\tms7000.h
# End Source File
# End Group
# Begin Group "AT91"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\at91\at91.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\at91\at91.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\at91\at91dasm.c
# End Source File
# End Group
# Begin Group "ARM7"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\arm7\arm7.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\arm7\arm7.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\arm7\arm7dasm.c
# End Source File
# End Group
# Begin Group "CDP1802"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\cdp1802\1802dasm.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\cdp1802\cdp1802.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\cdp1802\cdp1802.h
# End Source File
# End Group
# Begin Group "TMS9900"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\cpu\tms9900\9900dasm.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms9900\9900stat.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms9900\99xxcore.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms9900\99xxstat.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms9900\tms9900.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms9900\tms9900.h
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms9900\tms9980a.c
# End Source File
# Begin Source File

SOURCE=.\src\cpu\tms9900\tms9995.c
# End Source File
# End Group
# End Group
# Begin Group "Machine"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\machine\4094.c
# End Source File
# Begin Source File

SOURCE=.\src\machine\4094.h
# End Source File
# Begin Source File

SOURCE=.\src\machine\6522via.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\6522via.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\6530riot.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\6530riot.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\6532riot.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\6532riot.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\6821pia.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\6821pia.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\8255ppi.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\8255ppi.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\eeprom.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\eeprom.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\mathbox.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\mathbox.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\pic8259.c
# End Source File
# Begin Source File

SOURCE=.\src\machine\pic8259.h
# End Source File
# Begin Source File

SOURCE=.\src\machine\ticket.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\ticket.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\z80fmly.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\machine\z80fmly.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "Sound"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\sound\2151intf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\2151intf.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\3812intf.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\3812intf.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\5220intf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\5220intf.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\adpcm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\adpcm.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\ay8910.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\ay8910.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\bsmt2000.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\bsmt2000.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\dac.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\dac.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\disc_dev.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\sound\disc_flt.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\sound\disc_inp.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\sound\disc_mth.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\sound\disc_out.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\sound\disc_wav.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\sound\discrete.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\discrete.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\fm.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\fm.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\fmopl.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\fmopl.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\hc55516.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\hc55516.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\m114s.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\m114s.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\mixer.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\mixer.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\msm5205.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\msm5205.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\s14001a.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\s14001a.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\samples.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\samples.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\sn76477.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\sn76477.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\sn76496.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\sn76496.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\sp0250.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\sp0250.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\streams.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\streams.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\tms320av120.c
# End Source File
# Begin Source File

SOURCE=.\src\sound\tms320av120.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\tms5220.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\tms5220.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\tms5220r.c
# PROP Exclude_From_Build 1
# End Source File
# Begin Source File

SOURCE=.\src\sound\votrax.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\votrax.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\vtxsmpls.inc
# End Source File
# Begin Source File

SOURCE=.\src\sound\ym2151.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\ym2151.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "VidHrdw"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\vidhrdw\avgdvg.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\avgdvg.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\crtc6845.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\crtc6845.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\generic.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\generic.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\tms9928a.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\tms9928a.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\vector.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vidhrdw\vector.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Source File

SOURCE=.\src\artwork.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\artwork.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\audit.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\audit.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cheat.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cheat.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\common.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\common.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\config.c
# End Source File
# Begin Source File

SOURCE=.\src\config.h
# End Source File
# Begin Source File

SOURCE=.\src\cpuexec.c
# End Source File
# Begin Source File

SOURCE=.\src\cpuexec.h
# End Source File
# Begin Source File

SOURCE=.\src\cpuint.c
# End Source File
# Begin Source File

SOURCE=.\src\cpuint.h
# End Source File
# Begin Source File

SOURCE=.\src\cpuintrf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\cpuintrf.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\datafile.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\datafile.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\drawgfx.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\drawgfx.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\driver.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\fileio.c
# End Source File
# Begin Source File

SOURCE=.\src\fileio.h
# End Source File
# Begin Source File

SOURCE=.\src\sound\filter.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sound\filter.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\gfxobj.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\harddisk.c
# End Source File
# Begin Source File

SOURCE=.\src\harddisk.h
# End Source File
# Begin Source File

SOURCE=.\src\hash.c
# End Source File
# Begin Source File

SOURCE=.\src\hash.h
# End Source File
# Begin Source File

SOURCE=.\src\hiscore.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\hiscore.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\info.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\info.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\inptport.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\inptport.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\input.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\input.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\legacy.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\mame.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\mame.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\mamedbg.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\mamedbg.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\md5.c
# End Source File
# Begin Source File

SOURCE=.\src\md5.h
# End Source File
# Begin Source File

SOURCE=.\src\memory.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\memory.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\osdepend.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\palette.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\palette.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\png.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\png.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\profiler.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\profiler.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sha1.c
# End Source File
# Begin Source File

SOURCE=.\src\sha1.h
# End Source File
# Begin Source File

SOURCE=.\src\sndintrf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sndintrf.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\sprite.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\state.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\state.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\tilemap.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\tilemap.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\timer.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\timer.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\ui_text.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\ui_text.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\unzip.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\unzip.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\usrintrf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\usrintrf.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\version.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\window.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\window.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "Windows"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\windows\asmblit.asm

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"
# PROP Ignore_Default_Tool 1
# Begin Custom Build
IntDir=.\obj/PinMAME32/Release/Windows
InputPath=.\src\windows\asmblit.asm
InputName=asmblit

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasmw -f coff -o "$(IntDir)\$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"
# PROP Ignore_Default_Tool 1
# Begin Custom Build
IntDir=.\obj/PinMAME32/Debug/Windows
InputPath=.\src\windows\asmblit.asm
InputName=asmblit

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasmw -f coff -o "$(IntDir)\$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\asmtile.asm

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"
# PROP Ignore_Default_Tool 1
# Begin Custom Build
IntDir=.\obj/PinMAME32/Release/Windows
InputPath=.\src\windows\asmtile.asm
InputName=asmtile

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasmw -f coff -o "$(IntDir)\$(InputName).obj" "$(InputPath)"

# End Custom Build

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"
# PROP Ignore_Default_Tool 1
# Begin Custom Build
IntDir=.\obj/PinMAME32/Debug/Windows
InputPath=.\src\windows\asmtile.asm
InputName=asmtile

"$(IntDir)\$(InputName).obj" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nasmw -f coff -o "$(IntDir)\$(InputName).obj" "$(InputPath)"

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\blit.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\blit.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\config.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\d3d_extra.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\dirty.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\fileio.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\fronthlp.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\input.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\misc.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\misc.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\osd_cpu.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\osinline.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\pattern.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\rc.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\rc.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\snprintf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\sound.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\ticker.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\video.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\video.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\wind3d.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\wind3d.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\wind3dfx.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\wind3dfx.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\winddraw.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\winddraw.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\window.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\window.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\winmain.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\windows\winprefix.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME32/Release/Windows"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Intermediate_Dir "obj/PinMAME32/Debug/Windows"

!ENDIF 

# End Source File
# End Group
# Begin Group "zlib"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\zlib\zconf.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\zlib\zlib.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "PinMAME"

# PROP Default_Filter ""
# Begin Group "sims"

# PROP Default_Filter ""
# Begin Group "s11"

# PROP Default_Filter ""
# Begin Group "full_s11"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\wpc\sims\s11\full\dd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\s11\full\milln.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "prelim_s11"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\wpc\sims\s11\prelim\eatpm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# End Group
# Begin Group "wpc"

# PROP Default_Filter ""
# Begin Group "full_wpc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\afm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\bop.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\br.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\cftbl.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\dd_wpc.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\drac.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\fh.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\ft.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\gi.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\gw.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\hd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\hurr.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\ij.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\jd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\mm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\ngg.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\pz.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\rs.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\ss.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\sttng.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\t2.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\taf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\tom.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\tz.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\wcs.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\full\ww.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "prelim_wpc"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\cc.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\congo.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\corv.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\cp.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\cv.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\dh.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\dm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\dw.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\fs.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\i500.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\jb.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\jm.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\jy.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\mb.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\nbaf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\nf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\pop.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\sc.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\totan.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\ts.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\wpc\prelim\wd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# End Group
# Begin Group "s7"

# PROP Default_Filter ""
# Begin Group "full_s7"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\wpc\sims\s7\full\bk.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\s7\full\tmfnt.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "prelim_s7"

# PROP Default_Filter ""
# End Group
# End Group
# Begin Group "se"

# PROP Default_Filter ""
# Begin Group "prelim_se"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\wpc\sims\se\prelim\elvis.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\sims\se\prelim\monopoly.c
# End Source File
# End Group
# End Group
# End Group
# Begin Source File

SOURCE=.\src\wpc\allied.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\alvg.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\alvg.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\alvgdmd.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\alvgdmd.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\alvggames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\alvgs.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\alvgs.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\atari.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\atari.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\atarigames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\atarisnd.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\bingo.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\bowlgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\by35.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\by35.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\by35games.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\by35snd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\by35snd.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\by6803.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\by6803.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\by6803games.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\byvidgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\byvidpin.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\byvidpin.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\capcom.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\capcom.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\capcoms.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\capcoms.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\capgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\core.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\core.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\dedmd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\dedmd.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\degames.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\desound.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\desound.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\driver.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\flicker.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gen.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gp.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gp.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gpgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gpsnd.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gpsnd.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts1.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts1.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts1games.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts3.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts3.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts3dmd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts3dmd.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts3games.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts80.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts80.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts80games.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts80s.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\gts80s.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\hnkgames.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\hnks.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\hnks.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\inder.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\inder.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\indergames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\jp.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\jp.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\jpgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\ltd.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\ltd.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\ltdgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\mech.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\mech.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\mrgame.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\mrgame.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\mrgamegames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\nsm.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\nuova.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\peyper.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\peyper.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\peypergames.c
# End Source File
# Begin Source File

SOURCE=.\src\pinmame.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\play.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\play.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\playgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\rotation.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\rowamet.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\s11.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s11.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s11games.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s3games.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s4.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s4.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s4games.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s6.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s6.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s6games.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s7.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s7.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\s7games.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\se.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\se.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\segames.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sim.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sim.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sleic.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\sleic.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\sleicgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\snd_cmd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\snd_cmd.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sndbrd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\sndbrd.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\spinb.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\spinb.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\spinbgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\stgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\stsnd.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\stsnd.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\taito.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\taito.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\taitogames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\taitos.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\taitos.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\techno.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\vpintf.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\vpintf.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\wico.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\wmssnd.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\wmssnd.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\wpc.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\wpc.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\wpcgames.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\wpcsam.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\wpcsam.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\wpc\zac.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\zac.h
# End Source File
# Begin Source File

SOURCE=.\src\wpc\zacgames.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\zacproto.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\zacsnd.c
# End Source File
# Begin Source File

SOURCE=.\src\wpc\zacsnd.h
# End Source File
# End Group
# Begin Group "VC"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\vc\dirent.c

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vc\dirent.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\src\vc\unistd.h

!IF  "$(CFG)" == "PinMAME32 - Win32 Release"

# PROP Intermediate_Dir "obj/PinMAME/Release"

!ELSEIF  "$(CFG)" == "PinMAME32 - Win32 Debug"

!ENDIF 

# End Source File
# End Group
# Begin Group "ui"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\ui\audit32.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\audit32.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\bitmask.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\bitmask.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\columnedit.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\columnedit.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\datamap.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\datamap.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\dialogs.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\dialogs.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\dijoystick.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\dijoystick.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\directdraw.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\directdraw.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\directinput.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\directinput.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\directories.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\directories.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\dxdecode.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\dxdecode.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\file.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\help.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\help.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\history.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\history.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\layout.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\m32main.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\m32util.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\m32util.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\mame32.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\options.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\options.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\pinmame32.rc
# End Source File
# Begin Source File

SOURCE=.\src\ui\properties.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\properties.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\resource.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\screenshot.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\screenshot.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\splitters.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\splitters.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\treeview.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\treeview.h
# End Source File
# Begin Source File

SOURCE=.\src\ui\win32ui.c
# End Source File
# Begin Source File

SOURCE=.\src\ui\win32ui.h
# End Source File
# End Group
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\ui\res\about.bmp
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\checkmark.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\cpu.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\display.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\foldavail.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\folder.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\foldmanu.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\foldopen.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\foldsrc.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\foldunav.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\foldyear.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\harddisk.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\header_down.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\header_up.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\joystick.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\keyboard.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\manufact.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\nonwork.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\pinmame32.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\pinmame32.manifest
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\samples.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\source.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\splith.cur
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\toolbar.bmp
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\win_clone.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\win_noro.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\win_redx.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\win_roms.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\win_unkn.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\working.ico
# End Source File
# Begin Source File

SOURCE=.\src\ui\res\year.ico
# End Source File
# End Group
# End Target
# End Project
