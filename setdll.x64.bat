@echo off
cd /d %~dp0
setdll.x64.exe /d:crknob.dll chrome.exe
pause