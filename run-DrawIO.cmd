@echo off

call _common.cmd

set drawio_run_path="%~dp0\..\drawio-desktop"
if not exist %drawio_run_path% goto error_path

pushd %drawio_run_path%
echo Run drawio
echo Run in directory %CD%
echo DRAWIO_ENV = %DRAWIO_ENV%

cmd /C "npm start"

popd
goto end

:error_path
echo Path %drawio_run_path% does not exist!
pause

:end