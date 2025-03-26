@echo off
setlocal

:: Check if Git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo Error: Git is not installed or not found in PATH.
    exit /b 1
)

if "%~1"=="" (
    echo Usage: %~nx0 ^<commit-message^>
    exit /b 1
)

git add --all
git commit -m "%~1"
git push