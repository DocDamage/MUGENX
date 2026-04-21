@echo off
echo.
echo ================================================================
echo   MUGEN X ENGINE - QUICK VALIDATION TEST
echo ================================================================
echo.

cd /d "%~dp0"

echo [1/4] Checking Critical Files...
if not exist "engine\Ikemen_GO.exe" (
    echo   [FAIL] Engine executable missing!
    pause
    exit /b 1
)
echo   [OK] Engine found

if not exist "stages\training.def" (
    echo   [FAIL] Training stage missing!
    pause
    exit /b 1
)
echo   [OK] Training stage found

if not exist "data\select.def" (
    echo   [FAIL] Character select missing!
    pause
    exit /b 1
)
echo   [OK] Character select found

echo.
echo [2/4] Checking ModulesX modules...
if not exist "modules\engine_loader.lua" (
    echo   [WARN] Engine loader missing
) else (
    echo   [OK] Engine loader found
)

echo.
echo [3/4] Backing up old log...
if exist "Ikemen.log" (
    copy /Y "Ikemen.log" "Ikemen.log.old" >nul 2>&1
    del "Ikemen.log"  2>&1
    echo [OK] Old log backed up
) else (
    echo   [INFO] No previous log
)

echo.
echo [4/4] All checks passed!
echo.
echo ================================================================
echo   SYSTEM IS READY TO LAUNCH!
echo ================================================================
echo.
echo To launch the engine:
echo   1. Run: LAUNCH_MUGEN_X.bat
echo   2. OR: engine\Ikemen_GO.exe -r .
echo.
echo Would you like to launch now? (Ctrl+C to cancel)
pause

echo.
echo Launching MUGEN X ENGINE...
echo.
start "" "engine\Ikemen_GO.exe" -r .

echo.
echo Engine launched! Check the game window.
echo Check Ikemen.log after closing for any errors.
echo.
pause
