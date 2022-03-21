@echo off

@echo off & for /F "tokens=1-4 delims=/ " %%A in ('date/t') do (
set DateDay=%%A
set DateMonth=%%B
set DateYear=%%C
)

@echo off & for /F "tokens=1-6 delims=/ " %%D in ('time/t') do (
set DateTime=%%D
)

set tt=%time:~0,2%%time:~3,2%

set CurrentDate=%DateDay%-%DateMonth%-%DateYear%-%tt%
::echo %CurrentDate%
set CurrentDate=%CurrentDate::=.%
echo "================================"
::echo %CurrentDate%

set tt=%time:~0,2%%time:~3,2%
echo CurrentDate - CurrentTime %CurrentDate%  %tt%