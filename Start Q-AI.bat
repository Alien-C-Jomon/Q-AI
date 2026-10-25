@echo off
title Q-AI Launcher
cd /d "%~dp0"

echo Starting Q-AI Backend...
start "Q-AI Backend" cmd /k "qai-env\Scripts\activate && python api.py"

timeout /t 3 /nobreak >nul

echo Starting Q-AI Website...
cd /d "%~dp0Website"
start "Q-AI Website" cmd /k "npm run dev"

timeout /t 5 /nobreak >nul

echo Opening Q-AI...
start "" "http://localhost:8080/"

exit