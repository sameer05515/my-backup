@echo off
REM Optimized script to start react-ts-basics

title "react-ts-basics"

pushd "D:\GIT\react-projects\learn-react\react-ts-basics" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm run dev

popd >nul