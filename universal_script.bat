@echo off
setlocal

REM Get the directory where this BAT file is located
set "PROJECT_DIR=%~dp0"

REM Virtual environment location
set "VENV=%PROJECT_DIR%.env"

REM Check if the virtual environment exists
if not exist "%VENV%\Scripts\activate.bat" (
    echo ERROR: Virtual environment not found:
    echo %VENV%
    echo.
    echo Create it with:
    echo python -m venv .env
    pause
    exit /b 1
)

REM Activate the virtual environment
call "%VENV%\Scripts\activate.bat"

echo.
echo Virtual environment activated: %VENV%
echo.
cmd /k