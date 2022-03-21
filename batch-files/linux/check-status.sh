#!/bin/bash

@echo off

clear

CURRENT_DIR=$(pwd)
GIT_PROJ_DIR=/home/premendra/git
#set GIT_DUMP_DIR=C:/Users/premendra.kumar/Desktop/DUMP
GIT_MY_PAGES_APPS_DIR=/home/premendra/Downloads/apache-tomcat-8.5.40/webapps/my-pages
# bce-gui
#:: FileService
#:: MyTestPrograms
#:: smrt-bkp

myDate=$(date)
echo date "$myDate"
#set myTime=%time:~% 
#echo time %myTime%

echo $GIT_PROJ_DIR/file-bckp


echo "====    BCE-GUI   ================"
pushd $GIT_PROJ_DIR/bce-gui && git pull && git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    FILESERVICE   ================"
pushd $GIT_PROJ_DIR/FileService && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    MyTestPrograms   ================"
pushd $GIT_PROJ_DIR/MyTestPrograms && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    SMRT-BKP   ================"
pushd $GIT_PROJ_DIR/smrt-bkp && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    REACT-PROJECTS   ================"
pushd $GIT_PROJ_DIR/react-projects && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    ANGULAR-NPM-PROJECTS   ================"
pushd $GIT_PROJ_DIR/angular-npm-projects && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====     TASK-MGMT-SERVICE-MYSQL-DB-BRANCH   ================="
pushd $GIT_PROJ_DIR/task-mgmt-service-mysql-db-branch && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    JTRAC   ================"
pushd $GIT_PROJ_DIR/jtrac && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    J-TRAC-CODE-R1373-TRUNK   ================"
pushd $GIT_PROJ_DIR/j-trac-code-r1373-trunk && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    BCE-REST-SERVICES   ================"
pushd $GIT_PROJ_DIR/bce-rest-services && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    INTERVIEW-MGMT-REST   ================"
pushd $GIT_PROJ_DIR/interview-mgmt-rest && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    NODEJS-EXPRESS-MYSQL-REST   ================"
pushd $GIT_PROJ_DIR/nodejs-express-mysql-rest && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "====    FILE-BCKP   ================"
pushd $GIT_PROJ_DIR/file-bckp && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "== GIT_MY_PAGES_APPS_DIR =="
pushd $GIT_MY_PAGES_APPS_DIR && git pull &&  git status && git add . && git commit -a -m "committing at $myDate" && git push && popd

echo "==== Logs of current commits ================"
pushd $GIT_PROJ_DIR/bce-gui && echo "===============================" && git remote show origin && git log -1  && popd
pushd $GIT_PROJ_DIR/FileService && echo "===============================" && git remote show origin && git log -1  && popd
pushd $GIT_PROJ_DIR/MyTestPrograms && echo "===============================" && git remote show origin && git log -1  && popd
pushd $GIT_PROJ_DIR/smrt-bkp && echo "===============================" && git remote show origin && git log -1  && popd
pushd $GIT_PROJ_DIR/react-projects && echo "===============================" && git remote show origin && git log -1  && popd
pushd $GIT_PROJ_DIR/angular-npm-projects && echo "===============================" && git remote show origin && git log -1  && popd
pushd $GIT_PROJ_DIR/task-mgmt-service-mysql-db-branch && echo "===============================" && git remote show origin && git log -1  && popd
pushd $GIT_PROJ_DIR/bce-rest-services && echo "===============================" && git remote show origin && git log -1  && popd
pushd $GIT_PROJ_DIR/interview-mgmt-rest && echo "===============================" && git remote show origin && git log -1  && popd
pushd $$GIT_PROJ_DIR/file-bckp && echo "===============================" && git remote show origin && git log -1 && popd
pushd $GIT_MY_PAGES_APPS_DIR && echo "===============================" && git remote show origin && git log -1  && popd



cd $CURRENT_DIR
#c:
