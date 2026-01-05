@echo off
echo ========================================
echo   Rutik Kadam Portfolio - Quick Start
echo ========================================
echo.

echo Checking if Node.js is installed...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Node.js is not installed. Please install it from https://nodejs.org/
    echo Then run this script again.
    pause
    exit /b 1
)

echo Node.js is installed!
echo.

echo Installing dependencies...
npm install

echo.
echo ========================================
echo   Portfolio is ready!
echo ========================================
echo.
echo Choose an option:
echo 1. Start local development server
echo 2. Open deployment guide
echo 3. Exit
echo.

set /p choice="Enter your choice (1-3): "

if "%choice%"=="1" (
    echo Starting development server...
    echo Your portfolio will open at http://localhost:3000
    npm run dev
) else if "%choice%"=="2" (
    echo Opening README.md with deployment instructions...
    start README.md
) else (
    echo Goodbye!
)

pause