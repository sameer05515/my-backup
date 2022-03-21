@echo off

SET curr_dir=%cd%

SET react_dir=D:\Prem\GIT-PROJ\react-projects\
SET tomcat_webapp_dir=D:\Prem\CUST-INST\apache-tomcat-8.5.56-windows-x86\webapps\

set my_react_app=my-react-app
::cd %react_dir%
::D:
::pushd %react_dir%\react-complete-guide\build && del * /q /s && popd
pushd %react_dir%\react-complete-guide\build && del * /q && popd
pushd %react_dir%\react-complete-guide && call npm run build && popd
pushd %tomcat_webapp_dir%\my-react-app && del * /q && popd
call xcopy /s /i /q /y /f %react_dir%\react-complete-guide\build %tomcat_webapp_dir%\my-react-app

pushd %react_dir%\react-inner-scroll\build && del * /q && popd
pushd %react_dir%\react-inner-scroll && call npm run build && popd
pushd %tomcat_webapp_dir%\react-inner-scroll && del * /q && popd
call xcopy /s /i /q /y /f %react_dir%\react-inner-scroll\build %tomcat_webapp_dir%\react-inner-scroll


cd %curr_dir%
C: