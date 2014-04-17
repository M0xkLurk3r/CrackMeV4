!IF "$(CFG)" == ""
CFG=CrackMeV4 - Win32 Debug
!MESSAGE No configuration specified. Defaulting to CrackMeV4 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "CrackMeV4 - Win32 Release" && "$(CFG)" != "CrackMeV4 - Win32 Debug"
!MESSAGE 指定的配置 "$(CFG)" 无效.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CrackMeV4.mak" CFG="CrackMeV4 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CrackMeV4 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "CrackMeV4 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "CrackMeV4 - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# 开始自定义宏
OutDir=.\Release
# 结束自定义宏

ALL : "$(OUTDIR)\CrackMeV4.exe"


CLEAN :
	-@erase "$(INTDIR)\CrackMeV4.obj"
	-@erase "$(INTDIR)\CrackMeV4.pch"
	-@erase "$(INTDIR)\CrackMeV4.res"
	-@erase "$(INTDIR)\CrackMeV4Dlg.obj"
	-@erase "$(INTDIR)\ExternDefine.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\CrackMeV4.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\CrackMeV4.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\CrackMeV4.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CrackMeV4.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\CrackMeV4.pdb" /machine:I386 /out:"$(OUTDIR)\CrackMeV4.exe" 
LINK32_OBJS= \
	"$(INTDIR)\CrackMeV4.obj" \
	"$(INTDIR)\CrackMeV4Dlg.obj" \
	"$(INTDIR)\ExternDefine.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\CrackMeV4.res"

"$(OUTDIR)\CrackMeV4.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "CrackMeV4 - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# 开始自定义宏
OutDir=.\Debug
# 结束自定义宏

ALL : "$(OUTDIR)\CrackMeV4.exe" "$(OUTDIR)\CrackMeV4.bsc"


CLEAN :
	-@erase "$(INTDIR)\CrackMeV4.obj"
	-@erase "$(INTDIR)\CrackMeV4.pch"
	-@erase "$(INTDIR)\CrackMeV4.res"
	-@erase "$(INTDIR)\CrackMeV4.sbr"
	-@erase "$(INTDIR)\CrackMeV4Dlg.obj"
	-@erase "$(INTDIR)\CrackMeV4Dlg.sbr"
	-@erase "$(INTDIR)\ExternDefine.obj"
	-@erase "$(INTDIR)\ExternDefine.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\CrackMeV4.bsc"
	-@erase "$(OUTDIR)\CrackMeV4.exe"
	-@erase "$(OUTDIR)\CrackMeV4.ilk"
	-@erase "$(OUTDIR)\CrackMeV4.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\CrackMeV4.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
RSC_PROJ=/l 0x804 /fo"$(INTDIR)\CrackMeV4.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\CrackMeV4.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\CrackMeV4.sbr" \
	"$(INTDIR)\CrackMeV4Dlg.sbr" \
	"$(INTDIR)\ExternDefine.sbr" \
	"$(INTDIR)\StdAfx.sbr"

"$(OUTDIR)\CrackMeV4.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\CrackMeV4.pdb" /debug /machine:I386 /out:"$(OUTDIR)\CrackMeV4.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\CrackMeV4.obj" \
	"$(INTDIR)\CrackMeV4Dlg.obj" \
	"$(INTDIR)\ExternDefine.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\CrackMeV4.res"

"$(OUTDIR)\CrackMeV4.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("CrackMeV4.dep")
!INCLUDE "CrackMeV4.dep"
!ELSE 
!MESSAGE Warning: cannot find "CrackMeV4.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "CrackMeV4 - Win32 Release" || "$(CFG)" == "CrackMeV4 - Win32 Debug"
SOURCE=.\CrackMeV4.cpp

!IF  "$(CFG)" == "CrackMeV4 - Win32 Release"


"$(INTDIR)\CrackMeV4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CrackMeV4.pch"


!ELSEIF  "$(CFG)" == "CrackMeV4 - Win32 Debug"


"$(INTDIR)\CrackMeV4.obj"	"$(INTDIR)\CrackMeV4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CrackMeV4.pch"


!ENDIF 

SOURCE=.\CrackMeV4.rc

"$(INTDIR)\CrackMeV4.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\CrackMeV4Dlg.cpp

!IF  "$(CFG)" == "CrackMeV4 - Win32 Release"


"$(INTDIR)\CrackMeV4Dlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CrackMeV4.pch"


!ELSEIF  "$(CFG)" == "CrackMeV4 - Win32 Debug"


"$(INTDIR)\CrackMeV4Dlg.obj"	"$(INTDIR)\CrackMeV4Dlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CrackMeV4.pch"


!ENDIF 

SOURCE=.\ExternDefine.cpp

!IF  "$(CFG)" == "CrackMeV4 - Win32 Release"


"$(INTDIR)\ExternDefine.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CrackMeV4.pch"


!ELSEIF  "$(CFG)" == "CrackMeV4 - Win32 Debug"


"$(INTDIR)\ExternDefine.obj"	"$(INTDIR)\ExternDefine.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\CrackMeV4.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "CrackMeV4 - Win32 Release"

CPP_SWITCHES=/nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Fp"$(INTDIR)\CrackMeV4.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\CrackMeV4.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "CrackMeV4 - Win32 Debug"

CPP_SWITCHES=/nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\CrackMeV4.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\StdAfx.sbr"	"$(INTDIR)\CrackMeV4.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

