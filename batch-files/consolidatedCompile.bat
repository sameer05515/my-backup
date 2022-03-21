@ECHO off

SET currentDir=%cd%

SET tomcatWebAppFolderLocation=D:\CUSTOM-INSTALLATIONS\apache-tomcat-8.5.47\webapps

echo Options : "bce-gui"
set /p UserInputPath=What project would you like compile?

echo "%UserInputPath%"

IF %UserInputPath%=="bce-gui" (set inputErrorLevel="valid-input" & GOTO compile-bce-gui) else (set inputErrorLevel="invalid-input" & GOTO invalid-input)

:compile-bce-gui
cd C:\Users\premendra.kumar\git\bce-gui-30-dec\bce-gui
call mvn clean install
IF NOT ERRORLEVEL 0 (echo myERRORLEVEL %ERRORLEVEL%)
IF NOT ERRORLEVEL 0 (GOTO error) 
copy C:\Users\premendra.kumar\git\bce-gui-30-dec\bce-gui\target %tomcatWebAppFolderLocation% /y
GOTO success



:error
Echo erorr in creating war files.. Activity aborted!!!
cd %currentDir%

:success
Echo Successfully created war files and copied them in target tomcat "%tomcatWebAppFolderLocation%" .. Activity success!!!
cd %currentDir%

:invalid-input
echo  User Provided : %UserInputPath% , inputErrorLevel  : %inputErrorLevel%
IF %inputErrorLevel%=="invalid-input"  (Echo "Invalid input provided. Activity aborted!!!")

