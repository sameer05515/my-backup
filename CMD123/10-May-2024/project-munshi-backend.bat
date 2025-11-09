@echo off

REM Optimized script to start project-munshi-backend

title "project-munshi-backend"

pushd "D:\GIT\react-projects\project-munshi\backend" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call mvn spring-boot:run

popd >nul
