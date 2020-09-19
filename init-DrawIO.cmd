@echo off

call _common.cmd

set drawio_run_path="%~dp0..\drawio-desktop"
if not exist %drawio_run_path% goto error_path
pushd %drawio_run_path%

echo Init drawio
echo Init in directory %drawio_run_path%

cmd /c "npm install"

cd drawio
cmd /c "npm install"

popd
goto end

:error_path
echo Path %drawio_run_path% does not exist!
pause

:end