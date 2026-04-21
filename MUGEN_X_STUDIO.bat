@echo off
title MUGEN X STUDIO
color 0B
cls

:MENU
cls
echo.
echo ================================================================
echo   MUGEN X STUDIO - CREATION SUITE
echo ================================================================
echo.
echo   [1] LAUNCH GAME (MUGEN X ENGINE)
echo.
echo   [2] CHARACTER GENERATOR (Create New Fighter)
echo       - Create characters from scratch using AI archetypes
echo.
echo   [3] FUSION LAB (Combine Characters)
echo       - Fuse two existing characters into a new hybrid
echo.
echo   [4] ROSTER TOOLS
echo       - Add missing characters, clean broken entries
echo.
echo   [5] EXIT
echo.
echo ================================================================
set /p choice="Select an option (1-5): "

if "%choice%"=="1" goto LAUNCH
if "%choice%"=="2" goto GENERATOR
if "%choice%"=="3" goto FUSION
if "%choice%"=="4" goto ROSTER
if "%choice%"=="5" goto EXIT

goto MENU

:LAUNCH
cls
echo Launching MUGEN X ENGINE...
call LAUNCH_MUGEN_X.bat
goto MENU

:GENERATOR
cls
echo.
echo Starting Neural Character Generator...
echo.
python tools/ai_character_gen/generator_v2.py interactive
pause
goto MENU

:FUSION
cls
echo.
echo Starting Fusion Lab...
echo.
python tools/ai_fusion_lab/fusion.py interactive
pause
goto MENU

:ROSTER
cls
echo.
echo [1] Add Missing NeoGeo Characters
echo [2] Remove Broken Characters
echo [3] Back
echo.
set /p rchoice="Select option: "
if "%rchoice%"=="1" (
    python tools/add_missing_neogeo.py
    pause
)
if "%rchoice%"=="2" (
    python tools/remove_broken_chars.py
    pause
)
goto MENU

:EXIT
exit
