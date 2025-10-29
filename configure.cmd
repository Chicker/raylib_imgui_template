@echo off

if not exist "build" mkdir build

cmake -G Ninja -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_BUILD_TYPE=Debug -B build

IF %ERRORLEVEL% EQU 0 (
    echo Generating project successfully.
) ELSE (
    echo Generating project failed with error code: %ERRORLEVEL%.
    goto :exit
)

:exit
