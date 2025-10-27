@echo off

call build.cmd

IF %ERRORLEVEL% EQU 0 (
    echo Building executed successfully.
    build\tests\tests.exe
    IF %ERRORLEVEL% NEQ 0 (
        echo Main tests failed: %ERRORLEVEL%.
        goto :exit
    )
    build\tweening\tests\tweening_tests.exe
    IF %ERRORLEVEL% NEQ 0 (
        echo Tweening tests failed: %ERRORLEVEL%.
        goto :exit
    )
) ELSE (
    echo Building failed with error code: %ERRORLEVEL%.
)

:exit
