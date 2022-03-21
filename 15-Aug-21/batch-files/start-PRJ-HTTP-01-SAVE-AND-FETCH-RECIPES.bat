@echo off

title PRJ-HTTP-01-SAVE-AND-FETCH-RECIPES
set CURR_DIR=%cd%
cd D:\DATA\git-hub-sam\angular-npm-projects\learn-angular\prj-http-01-save-and-fetch-recipes

D:
ng serve --port 4201

cd %CURR_DIR%