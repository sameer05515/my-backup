@echo off

cls

set CURRENT_DIR=%cd%
set GIT_PROJ_DIR=D:\Prem\GIT-PROJ
set GIT_DUMP_DIR=C:\Users\premendra.kumar\Desktop\DUMP
set GIT_MY_PAGES_APPS_DIR=D:\Prem\CUST-INST\apache-tomcat-8.5.59\webapps\my-pages

::angular-npm-projects
::bce-gui
::interview-mgmt-rest
::check-status.bat
::FileService
::j-trac-code-r1373-trunk
::jtrac
::MyTestPrograms
::react-projects
::smrt-bkp
::task-mgmt-service-mysql-db-branch
::db-files
::my-pages

set myDate=%date:~%

set myTime=%time:~% 


echo 						==				
echo date %myDate%
echo time %myTime%
echo 						==		
		


echo "==== PULL COMMIT PUSH CHANGES ================"

::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\bce-gui" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\interview-mgmt-rest" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\FileService" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\MyTestPrograms" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\smrt-bkp" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\react-projects" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\angular-npm-projects" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\task-mgmt-service-mysql-db-branch" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\jtrac" "%myDate%" "%myTime%"
::call git-pull-commit-push.bat "%GIT_PROJ_DIR%\j-trac-code-r1373-trunk" "%myDate%" "%myTime%"

::call git-pull-commit-push.bat "%GIT_DUMP_DIR%\db-files" "%myDate%" "%myTime%"
call git-pull-commit-push.bat "%GIT_MY_PAGES_APPS_DIR%" "%myDate%" "%myTime%"

echo "==== LOGS OF CURRENT COMMITS ================"

::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\bce-gui"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\interview-mgmt-rest"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\FileService"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\MyTestPrograms"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\smrt-bkp"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\react-projects"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\angular-npm-projects"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\task-mgmt-service-mysql-db-branch"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\jtrac"
::call git-logs-of-current-commits-with-file-history.bat "%GIT_PROJ_DIR%\j-trac-code-r1373-trunk"

::call git-logs-of-current-commits-with-file-history.bat "%GIT_DUMP_DIR%\db-files"
call git-logs-of-current-commits-with-file-history.bat "%GIT_MY_PAGES_APPS_DIR%"


cd %CURRENT_DIR%
::c:
