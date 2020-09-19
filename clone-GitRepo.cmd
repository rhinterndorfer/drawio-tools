@echo off
pushd %~dp0\..\
echo Cloning in directory %CD%

git clone -b my https://github.com/rhinterndorfer/drawio-desktop.git
git clone -b my https://github.com/rhinterndorfer/drawio.git drawio-desktop\drawio
git clone https://github.com/jgraph/mxgraph.git mxgraph2

popd