@echo off

set project_dir=%1

echo 						==			
	
echo   ----------------------------------                     
echo [    PROJECT_DIR                    ]
echo       %project_dir%
echo   ----------------------------------

pushd %project_dir%

echo   ----------------------------------
echo [    SHOW REMOTE ORIGIN             ]
echo   ----------------------------------

call git remote show origin 

echo   ----------------------------------
echo [    SHOW LAST COMMIT               ]
echo   ----------------------------------

call git log -1 

echo   ----------------------------------
echo [    SHOW CHANGED FILE-LIST         ]
echo   ----------------------------------

call git show --stat --oneline 

echo   ----------------------------------
echo [    DONE!!!                        ]
echo   ----------------------------------

popd

echo          ============================              
