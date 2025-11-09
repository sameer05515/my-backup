@echo off
REM Optimized script to start project-munshi-frontend

title "project-munshi-frontend"

pushd "D:\GIT\react-projects\project-munshi\frontend" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm run dev

popd >nul