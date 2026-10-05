@echo off
title Spirit University - Setup
cd /d "%~dp0"

echo Installing Flask, Twilio and required packages...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

if errorlevel 1 (
    echo.
    echo Installation failed. Check that Python is installed correctly.
) else (
    echo.
    echo Installation completed successfully.
    echo.
    echo Next: copy .env.example to .env and enter your Twilio credentials.
)
pause
