@echo off
set LANG=en
set TARGET=zh

:START
echo Started script succesfully, please check in-game. DO NOT CLOSE THIS WINDOW.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "translatetofilep2.ps1" -lang %LANG% -targLang %TARGET%
if %ERRORLEVEL% NEQ 0 (
    echo PowerShell script exited with an error. Restarting...
    timeout /t 1 > nul
    goto START
)
echo PowerShell script exited successfully.
pause