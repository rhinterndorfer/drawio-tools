@echo off
pushd %~dp0\..\drawio-desktop

echo git pull in directory %CD%
git pull --recurse-submodules

popd