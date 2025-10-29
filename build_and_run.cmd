@echo off

cls

call build.cmd

IF %ERRORLEVEL% EQU 0 (
    echo Building executed successfully.
    pushd build
    main.exe
    popd
) ELSE (
    echo Building failed with error code: %ERRORLEVEL%.
)
