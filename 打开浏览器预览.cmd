@echo off
set "PATH=%USERPROFILE%\.cargo\bin;%PATH%"
cd /d "%~dp0"
if not exist "node_modules" call npm ci
if not exist "dist\index.html" call npm run build
start "" "%~dp0dist\index.html"
