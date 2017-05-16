@echo off
echo %cd%
set digit1=%time:~0,1%
if "%digit1%"==" " set digit1=_
set timetext=%digit1%%time:~1,1%%time:~3,2%
set bkupfldr=%date:~10,4%_%date:~4,2%_%date:~7,2%%timetext%
echo %timetext%
setlocal enableextensions disabledelayedexpansion
set FirmwareFolder=%~dp0
set "reportsFolder=%~dp0\outputs\rpt\"
set "dcpFolder=%~dp0\outputs\dcp\"
set "outputFolder=%~dp0\outputs\output\"
mkdir %FirmwareFolder%\sync_rpt\rpt\rpt-%bkupfldr%
mkdir %FirmwareFolder%\sync_rpt\dcp\dcp-%bkupfldr%
mkdir "%FirmwareFolder%\sync_rpt\output\log-%bkupfldr%"
mkdir %FirmwareFolder%\sync_rpt\output\jou-%bkupfldr%
mkdir %FirmwareFolder%\sync_rpt\output\os-%bkupfldr%
mkdir %FirmwareFolder%\sync_rpt\output\xdc-%bkupfldr%
mkdir %FirmwareFolder%\sync_rpt\output\vhd-%bkupfldr%
mkdir %FirmwareFolder%\sync_rpt\output\dmp-%bkupfldr%
move %reportsFolder%*.rpt "%FirmwareFolder%\sync_rpt\rpt\rpt-%bkupfldr%"
move %dcpFolder%*.dcp "%FirmwareFolder%\sync_rpt\dcp\dcp-%bkupfldr%"
move %outputFolder%*.xdc "%FirmwareFolder%\sync_rpt\output\xdc-%bkupfldr%"
move %outputFolder%*.vhd "%FirmwareFolder%\sync_rpt\output\vhd-%bkupfldr%"
move %FirmwareFolder%*.log "%FirmwareFolder%\sync_rpt\output\log-%bkupfldr%"
move %FirmwareFolder%*.jou "%FirmwareFolder%\sync_rpt\output\jou-%bkupfldr%"
move %FirmwareFolder%*.os "%FirmwareFolder%\sync_rpt\output\os-%bkupfldr%"
move %FirmwareFolder%*.dmp "%FirmwareFolder%\sync_rpt\output\dmp-%bkupfldr%"
SET PATH=C:\Xilinx\Vivado\2016.3\bin;C:\Xilinx\Vivado\2016.3\lib\win64.o;%PATH%
SET XILINX_VIVADO=C:\Xilinx\Vivado\2016.3
vivado -mode batch -source %FirmwareFolder%master.tcl