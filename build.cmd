@echo off

cmake --build build --config Debug
IF %ERRORLEVEL% EQU 0 (
    echo Building project successfully.
) ELSE (
    echo Building project failed with error code: %ERRORLEVEL%.
    goto :exit
)

:exit
