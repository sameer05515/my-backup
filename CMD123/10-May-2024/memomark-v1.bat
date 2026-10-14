@echo off
REM Optimized script to start memomark-v1

title "memomark-v1"

pushd "D:\GIT\microservices-playground\example-base-31\memomark-v1" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm i
call npm run dev