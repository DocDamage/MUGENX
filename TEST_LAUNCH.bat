@echo off
setlocal EnableExtensions EnableDelayedExpansion

cd /d "%~dp0"

set "DRY_RUN=0"
set "WAIT_FOR_EXIT=0"
set "CAPTURE_LOG=0"
set "NO_PAUSE=0"
set "FAIL_ON_LOG_ERRORS=0"

:parse_args
if "%~1"=="" goto args_done
if /I "%~1"=="--dry-run" (
    set "DRY_RUN=1"
) else if /I "%~1"=="--wait" (
    set "WAIT_FOR_EXIT=1"
) else if /I "%~1"=="--capture-log" (
    set "CAPTURE_LOG=1"
) else if /I "%~1"=="--no-pause" (
    set "NO_PAUSE=1"
) else if /I "%~1"=="--fail-on-log-errors" (
    set "FAIL_ON_LOG_ERRORS=1"
) else (
    echo Unknown option: %~1
    echo Supported options: --dry-run --wait --capture-log --no-pause --fail-on-log-errors
    exit /b 2
)
shift
goto parse_args

:args_done
echo.
echo ================================================================
echo   MUGEN X ENGINE - SYSTEM TEST AND LAUNCH
echo ================================================================
echo.
echo Workspace: %CD%
echo Started: %DATE% %TIME%
echo.

set "PYTHON_CMD="
where py >nul 2>&1 && set "PYTHON_CMD=py -3"
if not defined PYTHON_CMD (
    where python >nul 2>&1 && set "PYTHON_CMD=python"
)

if not defined PYTHON_CMD (
    echo [FAIL] Python was not found on PATH.
    goto fail
)

echo [PHASE 1] Running preflight validator...
%PYTHON_CMD% tools\validate_system.py
if errorlevel 1 (
    echo.
    echo [FAIL] Preflight validation failed. Launch aborted.
    goto fail
)

if "%DRY_RUN%"=="1" (
    echo.
    echo [OK] Dry run completed. No engine launch requested.
    goto success
)

if not exist "engine\Ikemen_GO.exe" (
    echo [FAIL] engine\Ikemen_GO.exe is missing.
    goto fail
)

if "%CAPTURE_LOG%"=="1" (
    if not exist "logs" mkdir "logs"
    for /f %%I in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd_HHmmss"') do set "TIMESTAMP=%%I"
)

set "LOG_OFFSET=0"
if "%FAIL_ON_LOG_ERRORS%"=="1" (
    if "%WAIT_FOR_EXIT%"=="0" (
        echo [FAIL] --fail-on-log-errors requires --wait.
        goto fail
    )
    if exist "Ikemen.log" (
        if "%CAPTURE_LOG%"=="1" (
            copy /Y "Ikemen.log" "logs\Ikemen_prelaunch_!TIMESTAMP!.log" >nul
            echo Captured prelaunch Ikemen.log to logs\Ikemen_prelaunch_!TIMESTAMP!.log
        )
        del /q "Ikemen.log"
    )
)

echo.
echo [PHASE 2] Launching Ikemen GO...
if "%WAIT_FOR_EXIT%"=="1" (
    if "%CAPTURE_LOG%"=="1" (
        "engine\Ikemen_GO.exe" -r . > "logs\Ikemen_console_!TIMESTAMP!.log" 2>&1
    ) else (
        "engine\Ikemen_GO.exe" -r .
    )
    set "ENGINE_EXIT_CODE=%ERRORLEVEL%"
    echo Engine exit code: !ENGINE_EXIT_CODE!

    if "%CAPTURE_LOG%"=="1" if exist "Ikemen.log" (
        copy /Y "Ikemen.log" "logs\Ikemen_!TIMESTAMP!.log" >nul
        echo Captured Ikemen.log to logs\Ikemen_!TIMESTAMP!.log
        echo Captured console output to logs\Ikemen_console_!TIMESTAMP!.log
    )

    if "%FAIL_ON_LOG_ERRORS%"=="1" (
        echo [PHASE 3] Checking Ikemen.log for new error lines from this run...
        %PYTHON_CMD% tools\validate_system.py --log-from-offset 0 --fail-on-log-errors
        if errorlevel 3 (
            echo [FAIL] New error-like lines were written to Ikemen.log during this run.
            goto fail
        )
        if errorlevel 1 (
            echo [FAIL] Log validation command failed.
            goto fail
        )
    )

    if not "!ENGINE_EXIT_CODE!"=="0" (
        echo [WARN] Engine exited with a non-zero code.
    )
) else (
    start "" "engine\Ikemen_GO.exe" -r .
    echo Engine launched in a separate window.
    if "%CAPTURE_LOG%"=="1" (
        echo [INFO] Log capture is only available with --wait.
    )
)

goto success

:fail
echo.
echo TEST RESULT: FAILED
if "%NO_PAUSE%"=="1" exit /b 1
pause
exit /b 1

:success
echo.
echo TEST RESULT: OK
if "%NO_PAUSE%"=="1" exit /b 0
pause
exit /b 0
