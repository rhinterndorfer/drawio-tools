@echo off

call _common.cmd

rem build
cmd /c build-drawio.cmd

set drawio_publish_path=%~dp0..\drawio-desktop\
if not exist %drawio_publish_path% goto error_path

pushd %drawio_publish_path%
echo publish drawio
echo publish in directory %CD%
echo OpenJDK = %JAVA_HOME%

npm run release-win32
npm run release-win
robocopy %drawio_publish_path%\dist \\nas.lan\Temp\drawio *-portable.exe

popd
goto end

:error_path
echo Path %drawio_publish_path% does not exist!
pause

:end