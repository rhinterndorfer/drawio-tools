@echo off
pushd %~dp0\..\drawio-desktop

echo git push in directory %CD%
git push --recurse-submodules=on-demand

popd