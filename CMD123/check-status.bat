@echo off

cls

set CURRENT_DIR=%cd%
set GIT_PROJ_DIR=D:\Prem\GIT-PROJ
::set GIT_DUMP_DIR=C:\Users\premendra.kumar\Desktop\DUMP
set GIT_DUMP_DIR=D:\Prem\GIT-PROJ
set GIT_MY_PAGES_APPS_DIR=D:\Prem\CUST-INST\apache-tomcat-8.5.59\webapps\my-pages
:: bce-gui
:: FileService
:: MyTestPrograms
:: smrt-bkp

set myDate=%date:~%
echo date %myDate%
set myTime=%time:~% 
echo time %myTime%

echo %GIT_DUMP_DIR%\file-bckp


echo "====    BCE-GUI   ================"
pushd %GIT_PROJ_DIR%\bce-gui && call git pull && call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    FILESERVICE   ================"
pushd %GIT_PROJ_DIR%\FileService && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    MyTestPrograms   ================"
pushd %GIT_PROJ_DIR%\MyTestPrograms && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    SMRT-BKP   ================"
pushd %GIT_PROJ_DIR%\smrt-bkp && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    REACT-PROJECTS   ================"
pushd %GIT_PROJ_DIR%\react-projects && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    ANGULAR-NPM-PROJECTS   ================"
pushd %GIT_PROJ_DIR%\angular-npm-projects && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====     TASK-MGMT-SERVICE-MYSQL-DB-BRANCH   ================="
pushd %GIT_PROJ_DIR%\task-mgmt-service-mysql-db-branch && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    JTRAC   ================"
pushd %GIT_PROJ_DIR%\jtrac && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    J-TRAC-CODE-R1373-TRUNK   ================"
pushd %GIT_PROJ_DIR%\j-trac-code-r1373-trunk && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    BCE-REST-SERVICES   ================"
pushd %GIT_PROJ_DIR%\bce-rest-services && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    INTERVIEW-MGMT-REST   ================"
pushd %GIT_PROJ_DIR%\interview-mgmt-rest && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    BCE-SHOPPING-CART   ================"
pushd %GIT_PROJ_DIR%\bce-shopping-cart && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    NODEJS-EXPRESS-MYSQL-REST   ================"
pushd %GIT_PROJ_DIR%\nodejs-express-mysql-rest && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "====    FILE-BCKP   ================"
pushd %GIT_DUMP_DIR%\file-bckp && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "== GIT_MY_PAGES_APPS_DIR =="
pushd %GIT_MY_PAGES_APPS_DIR% && call git pull &&  call git status && call git add . && call git commit -a -m "committing at %myDate% %myTime%" && call git push && popd

echo "==== Logs of current commits ================"
pushd %GIT_PROJ_DIR%\bce-gui && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\FileService && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\MyTestPrograms && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\smrt-bkp && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\react-projects && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\angular-npm-projects && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\task-mgmt-service-mysql-db-branch && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\bce-rest-services && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\interview-mgmt-rest && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\bce-shopping-cart && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_PROJ_DIR%\nodejs-express-mysql-rest && echo "===============================" && git remote show origin && call git log -1  && popd
pushd %GIT_DUMP_DIR%\file-bckp && echo "===============================" && git remote show origin && call git log -1 && popd
pushd %GIT_MY_PAGES_APPS_DIR% && echo "===============================" && git remote show origin && call git log -1  && popd



cd %CURRENT_DIR%
::c:
