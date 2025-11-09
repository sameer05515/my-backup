@echo off
REM Optimized script to start express-pdf-viewer

title "express-pdf-viewer"

pushd "D:\GIT\unit-testing-playground\example-base-05\express-pdf-viewer" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm run dev:v2

popd >nul