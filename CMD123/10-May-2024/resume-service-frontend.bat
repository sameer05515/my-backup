@echo off
REM Optimized script to start resume-service frontend

title "frontend\resume-service"

pushd "D:\GIT\microservices-playground\example-base-03\fontend\gui-project-01" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm start

popd >nul