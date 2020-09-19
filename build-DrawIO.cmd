@echo off

call _common.cmd

set drawio_build_path="%~dp0\..\drawio-desktop\drawio\etc\build"
if not exist %drawio_build_path% goto error_path

pushd %drawio_build_path%
echo Build drawio
echo Building in directory %CD%
echo OpenJDK = %JAVA_HOME%

"%JAVA_HOME%\bin\javac.exe" Xml2Js.java

ant

popd
goto end

:error_path
echo Path %drawio_build_path% does not exist!
pause

:end