@ECHO off

rem Get start time:
REM for /F "tokens=1-4 delims=:.," %%a in ("%time%") do (
  REM set /A "start=(((%%a*60)+1%%b %% 100)*60+1%%c %% 100)*100+1%%d %% 100"
REM )

setlocal EnableDelayedExpansion

set "startTime=%time: =0%"

rem ############################################################################

SET repositoryURL1=https://github.com/premendrakumar/bce-gui.git
SET repositoryURL2=https://github.com/premendrakumar/interview-mgmt-rest.git
SET repositoryURL3=https://github.com/premendrakumar/bce-rest-services.git
SET baseFolder1=bce-gui
SET baseFolder2=interview-mgmt-rest
SET baseFolder3=bce-rest-services

SET projectFolder1=bce-gui
SET projectFolder2=interview-mgmt
SET projectFolder3=RestServices

SET tomcatWebAppFolderLocation=D:\CUSTOM-INSTALLATIONS\apache-tomcat-8.5.47\webapps

SET currentDir=%cd%

echo "baseFolder1=" %currentDir%\%baseFolder1%
echo "baseFolder2=" %currentDir%\%baseFolder2%
echo "baseFolder3=" %currentDir%\%baseFolder3%

REM rmdir %currentDir%\%baseFolder1%\%projectFolder1% /S /Q
REM rmdir %currentDir%\%baseFolder2% /S /Q
REM rmdir %currentDir%\%baseFolder3% /S /Q

:bce-gui
cd %currentDir%
if exist %currentDir%\%baseFolder1%\nul ( rmdir %currentDir%\%baseFolder1% /S /Q )
git clone %repositoryURL1%
cd %baseFolder1%\%projectFolder1%
call mvn clean install
echo myERRORLEVEL %ERRORLEVEL%
IF NOT ERRORLEVEL 0 (GOTO error) else (GOTO topic-management)

:topic-management
cd %currentDir%
if exist %currentDir%\%baseFolder2%\nul ( rmdir %currentDir%\%baseFolder2% /S /Q )
REM git clone %repositoryURL2%
git clone %repositoryURL2% --branch jersey-implementation --single-branch
cd %baseFolder2%\%projectFolder2%
call mvn clean install
echo myERRORLEVEL %ERRORLEVEL%
IF NOT ERRORLEVEL 0 (GOTO error) else (GOTO bce-rest-services)

:bce-rest-services
cd %currentDir%
if exist %currentDir%\%baseFolder3%\nul ( rmdir %currentDir%\%baseFolder3% /S /Q )
git clone %repositoryURL3%
cd %baseFolder3%\%projectFolder3%
call mvn clean install
echo myERRORLEVEL %ERRORLEVEL%
IF NOT ERRORLEVEL 0 (GOTO error) else (GOTO deployment)

:deployment
cd %currentDir%
copy %currentDir%\%baseFolder1%\%projectFolder1%\target %tomcatWebAppFolderLocation% /y
copy %currentDir%\%baseFolder2%\%projectFolder2%\target %tomcatWebAppFolderLocation% /y
copy %currentDir%\%baseFolder3%\%projectFolder3%\target %tomcatWebAppFolderLocation% /y

GOTO success


:error
Echo erorr in creating war files.. Activity aborted!!!
cd %currentDir%

:success
Echo Successfully created war files and copied them in target tomcat "%tomcatWebAppFolderLocation%" .. Activity success!!!
cd %currentDir%

rem ############################################################################

rem Get end time:
REM for /F "tokens=1-4 delims=:.," %%a in ("%time%") do (
   REM set /A "end=(((%%a*60)+1%%b %% 100)*60+1%%c %% 100)*100+1%%d %% 100"
REM )

rem Get elapsed time:
REM set /A elapsed=end-start

rem Show elapsed time:
REM set /A hh=elapsed/(60*60*100), rest=elapsed%%(60*60*100), mm=rest/(60*100), rest%%=60*100, ss=rest/100, cc=rest%%100
REM if %mm% lss 10 set mm=0%mm%
REM if %ss% lss 10 set ss=0%ss%
REM if %cc% lss 10 set cc=0%cc%
REM echo %hh%:%mm%:%ss%,%cc%


set "endTime=%time: =0%"



rem Get elapsed time:
set "end=!endTime:%time:~8,1%=%%100)*100+1!"  &  set "start=!startTime:%time:~8,1%=%%100)*100+1!"
set /A "elap=((((10!end:%time:~2,1%=%%100)*60+1!%%100)-((((10!start:%time:~2,1%=%%100)*60+1!%%100)"

rem Convert elapsed time to HH:MM:SS:CC format:
set /A "cc=elap%%100+100,elap/=100,ss=elap%%60+100,elap/=60,mm=elap%%60+100,hh=elap/60+100"

echo Start:    %startTime%
echo End:      %endTime%
echo Elapsed:  %hh:~1%%time:~2,1%%mm:~1%%time:~2,1%%ss:~1%%time:~8,1%%cc:~1%
