@echo off
title Spirit University - Classroom Booking
cd /d "%~dp0"
python -m pip install -r requirements.txt
if errorlevel 1 (
  echo Installation failed. Make sure Python is installed.
  pause
  exit /b 1
)
python app.py
pause
