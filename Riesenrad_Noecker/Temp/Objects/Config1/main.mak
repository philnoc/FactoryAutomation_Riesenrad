SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files\Common Files\Oracle\Java\javapath;C:\Program Files\OpenLogic\jdk-11.0.27.6-hotspot\bin;C:\TwinCAT\Common64;C:\TwinCAT\Common32;C:\Program Files\Python312\Scripts\;C:\Program Files\Python312\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\IVI Foundation\IVI\Bin\;C:\Program Files\IVI Foundation\IVI\Bin\;C:\Program Files\Git\cmd;C:\Program Files\dotnet\;C:\Program Files (x86)\dotnet\;C:\Program Files\MATLAB\R2024b\runtime\win64;C:\Program Files\MATLAB\R2024b\bin;C:\Program Files\PuTTY\;C:\Program Files (x86)\Microsoft SQL Server\160\Tools\Binn\;C:\Program Files\Microsoft SQL Server\160\Tools\Binn\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\170\Tools\Binn\;C:\Program Files\Microsoft SQL Server\160\DTS\Binn\;C:\Program Files\nodejs\;C:\Users\pnoec\apache-ant-1.10.15\bin;C:\Program Files\TortoiseGit\bin;C:\Users\pnoec\miniconda3;C:\Users\pnoec\miniconda3\Library\bin;C:\Users\pnoec\miniconda3\Scripts;C:\Users\pnoec\AppData\Local\Programs\Python\Launcher\;C:\Users\pnoec\AppData\Local\Microsoft\WindowsApps;C:\Users\pnoec\AppData\Local\Programs\Microsoft VS Code\bin;C:\MinGW\;C:\MinGW\bin;C:\Users\pnoec\AppData\Local\Programs\MiKTeX\miktex\bin\x64\;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\intelFPGA_lite\18.1\modelsim_ase\win32aloem;C:\Users\pnoec\miniconda3;C:\Users\pnoec\miniconda3\Library\bin;C:\Users\pnoec\miniconda3\Scripts;C:\Users\pnoec\AppData\Local\Programs\Python\Launcher\;C:\Users\pnoec\AppData\Local\Microsoft\WindowsApps;C:\Users\pnoec\AppData\Local\Programs\Microsoft VS Code\bin;C:\MinGW\;C:\MinGW\bin;C:\Users\pnoec\AppData\Local\Programs\MiKTeX\miktex\bin\x64\;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\intelFPGA_lite\18.1\modelsim_ase\win32aloem;C:\BRAutomation\AS412\bin-de\4.12;C:\BRAutomation\AS412\bin-de\4.11;C:\BRAutomation\AS412\bin-de\4.10;C:\BRAutomation\AS412\bin-de\4.9;C:\BRAutomation\AS412\bin-de\4.8;C:\BRAutomation\AS412\bin-de\4.7;C:\BRAutomation\AS412\bin-de\4.6;C:\BRAutomation\AS412\bin-de\4.5;C:\BRAutomation\AS412\bin-de\4.4;C:\BRAutomation\AS412\bin-de\4.3;C:\BRAutomation\AS412\bin-de\4.2;C:\BRAutomation\AS412\bin-de\4.1;C:\BRAutomation\AS412\bin-de\4.0;C:\BRAutomation\AS412\bin-de
export AS_BUILD_MODE := Build
export AS_VERSION := 4.12.3.127 SP
export AS_WORKINGVERSION := 4.12
export AS_COMPANY_NAME :=  
export AS_USER_NAME := pnoec
export AS_PATH := C:/BRAutomation/AS412
export AS_BIN_PATH := C:/BRAutomation/AS412/bin-de
export AS_PROJECT_PATH := C:/Users/pnoec/Downloads/Riesenrad_Noecker
export AS_PROJECT_NAME := X20CP1382
export AS_SYSTEM_PATH := C:/BRAutomation/AS/System
export AS_VC_PATH := C:/BRAutomation/AS412/AS/VC
export AS_TEMP_PATH := C:/Users/pnoec/Downloads/Riesenrad_Noecker/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/pnoec/Downloads/Riesenrad_Noecker/Binaries
export AS_GNU_INST_PATH := C:/BRAutomation/AS412/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := C:/BRAutomation/AS412/AS/GnuInst/V4.1.2/4.9/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BRAutomation/AS412/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := C:/BRAutomation/AS412/AS/GnuInst/V4.1.2/4.9/bin
export AS_INSTALL_PATH := C:/BRAutomation/AS412
export WIN32_AS_PATH := "C:\BRAutomation\AS412"
export WIN32_AS_BIN_PATH := "C:\BRAutomation\AS412\bin-de"
export WIN32_AS_PROJECT_PATH := "C:\Users\pnoec\Downloads\Riesenrad_Noecker"
export WIN32_AS_SYSTEM_PATH := "C:\BRAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BRAutomation\AS412\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\pnoec\Downloads\Riesenrad_Noecker\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\pnoec\Downloads\Riesenrad_Noecker\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BRAutomation\AS412\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "C:\BRAutomation\AS412\AS\GnuInst\V4.1.2\bin"
export WIN32_AS_INSTALL_PATH := "C:\BRAutomation\AS412"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/4.9/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/X20CP1382.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Build'   

