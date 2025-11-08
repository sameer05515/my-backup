@echo off
REM Optimized script to start dependency-injection-practice-with-es6-modules-and-webpack-dev-server

title "dependency-injection-practice-with-es6-modules-and-webpack-dev-server"

pushd "D:\GIT\unit-testing-playground\example-base-03\dependency-injection-practice-with-es6-modules-and-webpack-dev-server" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm run start-dev

popd >nul
