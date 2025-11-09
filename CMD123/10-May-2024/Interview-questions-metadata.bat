@echo off
REM Optimized script to start Interview-questions-metadata

title "Interview-questions-metadata"

pushd "D:\GIT\react-projects\Interview-questions-metadata" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm start

popd >nul