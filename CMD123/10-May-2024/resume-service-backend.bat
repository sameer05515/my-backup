@echo off
REM Optimized script to start resume-service backend

title "backend\resume-service"

pushd "D:\GIT\microservices-playground\example-base-03\backend\resume-service" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm run start:v3

popd >nul
