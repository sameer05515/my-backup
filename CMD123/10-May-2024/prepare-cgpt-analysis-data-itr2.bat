@echo off
REM Optimized script to prepare CGPT Analysis data: itr2

title "Prepare CGPT Analysis data: itr2"

pushd "D:\GIT\unit-testing-playground\example-base-05\express-pdf-viewer\src\common\CgptSnapshot\prepare-analysis-data" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

node .\index.itr2.js

popd >nul