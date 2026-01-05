@echo off
echo ========================================
echo   Push Portfolio to GitHub
echo ========================================
echo.

echo Step 1: Go to GitHub.com and create a new repository
echo Repository name: portfolio
echo Make it PUBLIC (so it can be deployed)
echo DO NOT initialize with README (we already have files)
echo.
echo Step 2: Copy the repository URL from GitHub
echo It will look like: https://github.com/yourusername/portfolio.git
echo.

set /p repo_url="Paste your GitHub repository URL here: "

if "%repo_url%"=="" (
    echo No URL provided. Please run the script again.
    pause
    exit /b 1
)

echo.
echo Adding GitHub remote...
git remote add origin %repo_url%

echo.
echo Pushing to GitHub...
git branch -M main
git push -u origin main

echo.
echo ========================================
echo   SUCCESS! Your portfolio is on GitHub!
echo ========================================
echo.
echo Next steps:
echo 1. Go to your GitHub repository
echo 2. Go to Settings ^> Pages
echo 3. Select "Deploy from a branch" ^> main branch
echo 4. Your portfolio will be live at: yourusername.github.io/portfolio
echo.

pause