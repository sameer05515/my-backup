@echo off
REM Optimized script to start promise-practice-in-react

title "promise-practice-in-react"

pushd "D:\GIT\unit-testing-playground\example-base-03\promise-practice-in-react" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm start

popd >nul