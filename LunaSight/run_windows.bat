@echo off
cd /d "%~dp0"
start "LunaSight web server" /min py -m http.server 8000 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" http://127.0.0.1:8000/
echo LunaSight is running at http://127.0.0.1:8000/
echo Keep the LunaSight web server window open while using the app.
