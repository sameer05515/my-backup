@echo off
REM Optimized script to start Shreemad Bhagwat Geeta Angular application

title "Shreemad Bhagwat Geeta Angular"

REM Navigate to project directory and ensure correct drive
pushd "D:\GIT\unit-testing-playground\example-base-05\ShrimadBhagwatGeeta" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

REM Start the Angular app using npm
call npm start

REM Return to original directory after execution
popd >nul