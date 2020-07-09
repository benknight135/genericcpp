@echo off
SET scriptpath=%~dp0
echo %scriptpath:~0,-1%
cd %scriptpath:~0,-1%
mkdir build
mkdir install
cd build
cmake -G "Visual Studio 15 2017 Win64" -DCMAKE_INSTALL_PREFIX="..\install" -DInheritanceClassLib_DIR="%cd%\..\3rdparty\InheritanceClassLib\lib\cmake\InheritanceClassLib" ..
cmake --build . --config Release --target install
pause