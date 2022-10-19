@echo off

set project_dir=%1
set myyDate=%2
set myyTime=%3
echo 						==				
            

powershell write-host -fore Blue   ----------------------------------  
echo [    PROJECT_DIR   ]
echo      %project_dir%
echo [    MY-DATE           ]
echo      %myyDate%
echo [    MY-TIME           ]
echo      %myyTime%
powershell write-host -fore Blue   ----------------------------------  

pushd %project_dir% 

echo   ----------------------------------
echo [    GIT PULL                       ]
echo   ----------------------------------

call git pull 

echo   ----------------------------------
echo [    GIT STATUS                     ]
echo   ----------------------------------

call git status 

echo   ----------------------------------
echo [    GIT ADD                        ]
echo   ----------------------------------

call git add . 

echo   ----------------------------------
echo [    GIT COMMIT                     ]
echo   ----------------------------------

call git commit -a -m "committing at %myDate% %myTime%" 

echo   ----------------------------------
echo [    GIT PUSH                       ]
echo   ----------------------------------
call git push 

echo   ----------------------------------
echo [    DONE!!!                        ]
echo   ----------------------------------

popd

echo          ============================              
