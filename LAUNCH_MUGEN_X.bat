@echo off
echo.
echo ============================================
echo   MUGEN X ENGINE - LAUNCHER
echo ============================================
echo.

REM Change to the script directory
cd /d "%~dp0"

REM Verify critical files exist
if not exist "external\script\main.lua" (
    echo ERROR: main.lua not found!
    echo Expected: %CD%\external\script\main.lua
    pause
    exit /b 1
)

if not exist "engine\Ikemen_GO.exe" (
    echo ERROR: Ikemen_GO.exe not found!
    echo Expected: %CD%\engine\Ikemen_GO.exe
    pause
    exit /b 1
)

echo Starting from: %CD%
echo.
echo If you see errors, check the console window!
echo Press F8 in-game for the Dev Menu.
echo.

REM Launch with root set to current directory
start "" "engine\Ikemen_GO.exe" -r .

echo.
echo Game launched! Check the game window.
echo (You can close this console now or wait for errors)
echo.
pause
