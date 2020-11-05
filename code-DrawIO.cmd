@echo off

call _common.cmd

set drawio_run_path="%~dp0\..\drawio-desktop"
if not exist %drawio_run_path% goto error_path


pushd %~dp0\..\drawio-desktop\drawio

echo git skip files
git checkout src/main/webapp/templates/index.xml
git update-index --assume-unchanged src/main/webapp/templates/index.xml

git update-index --assume-unchanged src/main/webapp/js/stencils.min.js
git update-index --assume-unchanged src/main/webapp/js/viewer-static.min.js
git update-index --assume-unchanged src/main/webapp/js/viewer.min.js
git update-index --assume-unchanged src/main/webapp/js/app.min.js
git update-index --assume-unchanged src/main/webapp/js/shapes.min.js
git update-index --assume-unchanged src/main/webapp/js/extensions.min.js
git update-index --assume-unchanged src/main/webapp/js/orgchart.min.js

popd

pushd %~dp0\..\drawio-desktop

git checkout electron-builder-win32.json
git update-index --assume-unchanged electron-builder-win32.json

popd


echo Code drawio
echo DRAWIO_ENV = %DRAWIO_ENV%

code "%drawio_run_path%"

goto end

:error_path
echo Path %drawio_run_path% does not exist!
pause

:end