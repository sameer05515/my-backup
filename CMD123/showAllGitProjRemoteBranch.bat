@echo off
set curr_dir=%cd% 
echo %curr_dir%
set git_dir=D:\Prem\GIT-PROJ
cd D:\Prem\GIT-PROJ\
::dir /b

cd angular-npm-projects
dir
call git remote show origin
cd %git_dir%

REM cd angular.treeview
REM call git remote show origin
REM cd %git_dir%

REM cd bce-gui
REM call git remote show origin 
REM cd %git_dir%

REM cd bce-rest-services
REM call git remote show origin
REM cd %git_dir%

REM cd bce-shopping-cart
REM call git remote show origin
REM cd %git_dir%

REM cd codingExample
REM call git remote show origin
REM cd %git_dir%

REM cd db-files
REM call git remote show origin
REM cd %git_dir%

REM cd file-bckp
REM call git remote show origin
REM cd %git_dir%

REM cd FileService
REM call git remote show origin
REM cd %git_dir%

REM cd interview-mgmt-rest
REM call git remote show origin
REM cd %git_dir%

REM cd JavaMultiThreading
REM call git remote show origin
REM cd %git_dir%

REM cd microservices-demo
REM call git remote show origin
REM cd %git_dir%

REM cd MyTestPrograms
REM call git remote show origin
REM cd %git_dir%

REM cd nodejs-express-mysql-rest
REM call git remote show origin
REM cd %git_dir%

REM cd smrt-bkp
REM call git remote show origin
REM cd %git_dir%

REM cd task-mgmt-service-mysql-db-branch
REM call git remote show origin
REM cd %git_dir%

REM cd topic-management
REM call git remote show origin
REM cd %git_dir%

REM cd turn.js
REM call git remote show origin
REM cd %git_dir%

REM cd word-meaning
REM call git remote show origin
REM cd %git_dir%

REM cd word-meaning-gui
REM call git remote show origin
REM cd %git_dir%

REM cd word-meaning-mongodb-services
REM call git remote show origin
REM cd %git_dir%


cd %curr_dir%
