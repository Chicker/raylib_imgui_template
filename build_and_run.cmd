@echo off

cls

call build.cmd

IF %ERRORLEVEL% EQU 0 (
    echo Building executed successfully.
    build\main.exe
) ELSE (
    echo Building failed with error code: %ERRORLEVEL%.
)
