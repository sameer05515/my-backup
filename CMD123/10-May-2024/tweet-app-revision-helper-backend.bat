@echo off
REM Optimized script to start TweetApp revision-helper-backend

title "TweetApp\revision-helper-backend"

pushd "D:\GIT\react-projects\learn-react\TweetApp\revision-helper" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call mvn spring-boot:run

popd >nul