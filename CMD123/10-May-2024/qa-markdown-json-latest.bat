@echo off
REM Optimized script to start qa-markdown-json-v14

title "qa-markdown-json-v14"

pushd "D:\GIT\microservices-playground\example-base-31\qa-markdown-json-v14" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm i
call npm run dev