@echo off
start "" /min powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0lock-prevent.ps1"