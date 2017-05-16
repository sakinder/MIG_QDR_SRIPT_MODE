@echo on>out.txt
@echo off
setlocal enabledelayedexpansion
set "parentfolder=%CD%"
for /r . %%g in (*.v) do (
  set "var=%%g"
  set var=!var:%parentfolder%=!
  echo $path_rtl/!var! >> out.txt
)