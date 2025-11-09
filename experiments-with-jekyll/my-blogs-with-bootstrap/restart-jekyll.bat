@echo off
echo ========================================
echo   Jekyll Restart Script
echo ========================================
echo.

echo [1/4] Stopping Jekyll container...
docker-compose down
if %errorlevel% neq 0 (
    echo Warning: Error stopping containers. Continuing anyway...
)
echo.

echo [2/4] Cleaning Jekyll cache...
if exist _site (
    echo   Removing _site directory...
    rmdir /s /q _site 2>nul
    if exist _site (
        echo   Warning: Could not remove _site directory
    ) else (
        echo   Successfully removed _site directory
    )
) else (
    echo   _site directory does not exist, skipping...
)

if exist .jekyll-cache (
    echo   Removing .jekyll-cache directory...
    rmdir /s /q .jekyll-cache 2>nul
    if exist .jekyll-cache (
        echo   Warning: Could not remove .jekyll-cache directory
    ) else (
        echo   Successfully removed .jekyll-cache directory
    )
) else (
    echo   .jekyll-cache directory does not exist, skipping...
)
echo.

echo [3/4] Building Docker image...
docker-compose build
if %errorlevel% neq 0 (
    echo Error: Docker build failed!
    pause
    exit /b 1
)
echo.

echo [4/4] Starting Jekyll server...
echo.
echo ========================================
echo   Jekyll is starting...
echo   Site will be available at: http://localhost:4000
echo   Press Ctrl+C to stop the server
echo ========================================
echo.

docker-compose up
