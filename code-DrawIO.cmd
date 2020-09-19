@echo off

call _common.cmd

set drawio_run_path="%~dp0\..\drawio-desktop"
if not exist %drawio_run_path% goto error_path


echo Code drawio
echo DRAWIO_ENV = %DRAWIO_ENV%

code "%drawio_run_path%"

goto end

:error_path
echo Path %drawio_run_path% does not exist!
pause

:end