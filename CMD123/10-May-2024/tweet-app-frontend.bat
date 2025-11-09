@echo off
REM Optimized script to start TweetApp frontend

title "TweetApp\frontend"

pushd "D:\GIT\react-projects\learn-react\TweetApp\frontend" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm start

popd >nul