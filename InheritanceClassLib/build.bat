@echo off
mkdir build
mkdir install
cd build
cmake -G "Visual Studio 15 2017 Win64" -DCMAKE_INSTALL_PREFIX="..\install" ..
cmake --build . --config Release --target install
pause