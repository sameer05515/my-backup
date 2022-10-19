@echo off

cls

set CURRENT_DIR=%cd%
set GIT_PROJ_DIR=D:\DATA\git-hub-sam
set GIT_DUMP_DIR=D:\DATA\git-hub-sam
set GIT_MY_PAGES_APPS_DIR=D:\DATA\CUSTOM-INSTALLATION\apache-tomcat-8.5.47\webapps\my-pages

set myDate=%date:~%
echo date %myDate%
set myTime=%time:~% 
echo time %myTime%

echo %GIT_DUMP_DIR%\file-bckp

echo "====    ANGULAR-NPM-PROJECTS1   ================"
pushd %GIT_PROJ_DIR%\angular-npm-projects1 && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    FILE-BCKP   ================"
pushd %GIT_DUMP_DIR%\file-bckp && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    MyTestPrograms ================"
pushd %GIT_DUMP_DIR%\MyTestPrograms && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "== GIT_MY_PAGES_APPS_DIR =="
pushd %GIT_MY_PAGES_APPS_DIR% && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "==== Logs of current commits ================"
pushd %GIT_PROJ_DIR%\angular-npm-projects1 && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_DUMP_DIR%\file-bckp && echo "===============================" && git remote show origin && call git log -1 && popd
pushd %GIT_DUMP_DIR%\MyTestPrograms && echo "===============================" && git remote show origin && call git log -1 && popd
pushd %GIT_MY_PAGES_APPS_DIR% && echo "===============================" && git remote show origin && call git log -1  && popd



cd %CURRENT_DIR%
::c:
