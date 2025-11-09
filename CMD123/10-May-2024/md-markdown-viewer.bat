@echo off
setlocal

set "TARGET_DIR=D:\GIT\unit-testing-playground\example-base-05\md-markdown-viewer"

if not exist "%TARGET_DIR%" (
    echo Target directory not found: %TARGET_DIR%
    exit /b 1
)

pushd "%TARGET_DIR%"
npm run dev
popd

endlocal