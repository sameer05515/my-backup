@echo off
REM Optimized script to start chat-gpt-conversation

title "chat-gpt-conversation"

pushd "D:\GIT\microservices-playground\example-base-03\fontend\chat-gpt-conversation" >nul 2>&1
if errorlevel 1 (
    echo Failed to change directory. Please check the path.
    pause
    exit /b 1
)

call npm start

popd >nul