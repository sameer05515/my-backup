@echo off
REM Optimized script to start Word CRUD Application

title "Word CRUD Application"

pushd "D:\GIT\unit-testing-playground\example-base-05\word-crud" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm start

popd >nul