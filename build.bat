@echo off
:: Compile main.ahk into main.exe and restart it.
:: Usage: double-click, or run `build` from a terminal in this folder.
:: Pass /nopause when nobody can press a key (git hook, VS Code task) so a failed compile doesn't wait forever.
setlocal
set "AHK=C:\Program Files\AutoHotkey"
cd /d "%~dp0"

:: The running main.exe locks the file, so close it before compiling.
taskkill /IM main.exe /F >nul 2>&1 && ping -n 2 127.0.0.1 >nul

"%AHK%\Compiler\Ahk2Exe.exe" /in main.ahk /out main.exe /base "%AHK%\v2\AutoHotkey64.exe" /silent
if errorlevel 1 (
    echo Compile failed.
    if /i not "%~1"=="/nopause" pause
    exit /b 1
)

start "" main.exe
echo main.exe rebuilt and restarted.
