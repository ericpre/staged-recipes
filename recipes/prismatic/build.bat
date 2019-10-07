setlocal EnableDelayedExpansion

:: Make a build folder and change to it.
mkdir build
cd build

:: Configure using the CMakeFiles
cmake -G "NMake Makefiles" ^
      -DPRISMATIC_ENABLE_GUI=1 ^
      -DCMAKE_INSTALL_PREFIX="%PREFIX%" ^
      ..

if errorlevel 1 exit 1

:: Build!
nmake
if errorlevel 1 exit 1

:: Install!
nmake install
if errorlevel 1 exit 1
