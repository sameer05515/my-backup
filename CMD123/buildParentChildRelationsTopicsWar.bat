@echo off
cls

set CURRENT_DIR=%cd%
set WMDBBckpFolder=D:\Prem\GIT-PROJ\MyTestPrograms\ParentChildRelationsTopics
set TOMCAT_WEBApps_DIR=D:\Prem\CUST-INST\apache-tomcat-8.5.59\webapps

::cd %WMDBBckpFolder%
::d:

pushd %WMDBBckpFolder% && call mvn clean install -Dmaven.test.skip=true && popd
copy %WMDBBckpFolder%\target\ParentChildRelationsTopics.war %TOMCAT_WEBApps_DIR%\ParentChildRelationsTopics.war /y



cd %CURRENT_DIR%
cd c:

dir /b