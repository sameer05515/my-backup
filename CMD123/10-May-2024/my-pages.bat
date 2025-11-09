@echo off
REM Optimized script to start my-pages

title "my-pages"

pushd "C:\cust_inst\apache-tomcat-9.0.86\webapps\my-pages" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm start

popd >nul