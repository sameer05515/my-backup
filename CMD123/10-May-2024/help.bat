@echo off
setlocal enabledelayedexpansion

REM ============================================================================
REM Help Script - Lists all available batch files and their descriptions
REM ============================================================================

title "Batch Scripts Help - 10-May-2024"

color 0A
echo.
echo ============================================================================
echo                    AVAILABLE BATCH SCRIPTS - HELP MENU
echo ============================================================================
echo.
echo This directory contains batch scripts to quickly launch various projects.
echo.
echo ============================================================================
echo                           PROJECT LAUNCHERS
echo ============================================================================
echo.

REM Frontend Projects
echo [FRONTEND PROJECTS]
echo ----------------------------------------------------------------------------
echo   react-ts-basics.bat                    - React TypeScript basics project
echo   next-ts-basics.bat                     - Next.js TypeScript basics project
echo   project-munshi-frontend.bat             - Project Munshi frontend (React)
echo   shreemad-bhagwat-geeta-angular.bat     - Shreemad Bhagwat Geeta Angular app
echo   tweet-app-frontend.bat                  - Tweet App frontend
echo   resume-service-frontend.bat             - Resume Service frontend
echo   my-pages.bat                            - My Pages project
echo   chat-renderer.bat                       - Chat Renderer application
echo   learn-to-add-arrows-between-divs.bat   - Learning project for arrows between divs
echo   promise-practice-in-react.bat           - Promise practice in React
echo.

REM Backend Projects
echo [BACKEND PROJECTS]
echo ----------------------------------------------------------------------------
echo   project-munshi-backend.bat              - Project Munshi backend
echo   shreemad-bhagwat-geeta-spring-boot.bat  - Shreemad Bhagwat Geeta Spring Boot
echo   tweet-app-backend.bat                   - Tweet App backend
echo   tweet-app-revision-helper-backend.bat   - Tweet App revision helper backend
echo   resume-service-backend.bat              - Resume Service backend
echo   comics-viewer.bat                       - Comics Viewer Spring Boot app
echo   express-pdf-viewer.bat                  - Express PDF Viewer
echo   word-crud.bat                           - Word CRUD application
echo.

REM Utility/Viewer Projects
echo [UTILITY / VIEWER PROJECTS]
echo ----------------------------------------------------------------------------
echo   md-markdown-viewer.bat                  - Markdown viewer application
echo   comics-viewer.bat                       - Comics viewer application
echo.

REM Learning/Practice Projects
echo [LEARNING / PRACTICE PROJECTS]
echo ----------------------------------------------------------------------------
echo   dependency-injection-practice-with-es6-modules-and-webpack-dev-server.bat
echo                                          - DI practice with ES6 modules
echo   Interview-questions-metadata.bat       - Interview questions metadata project
echo.

REM Data Preparation Scripts
echo [DATA PREPARATION SCRIPTS]
echo ----------------------------------------------------------------------------
echo   prepare-cgpt-analysis-data-itr2.bat     - Prepare ChatGPT analysis data (Iteration 2)
echo   prepare-cgpt-analysis-data-itr3.bat    - Prepare ChatGPT analysis data (Iteration 3)
echo.

echo ============================================================================
echo                              USAGE INSTRUCTIONS
echo ============================================================================
echo.
echo To run any script, simply double-click on it or run from command prompt:
echo.
echo   Example: react-ts-basics.bat
echo.
echo Most scripts will:
echo   - Navigate to the project directory
echo   - Start the development server (npm run dev, mvn spring-boot:run, etc.)
echo   - Return to the original directory when done
echo.
echo ============================================================================
echo                              QUICK REFERENCE
echo ============================================================================
echo.
echo Frontend Projects (React/Next.js/Angular):
echo   - Usually run: npm run dev
echo   - Check browser at: http://localhost:3000 or http://localhost:4200
echo.
echo Backend Projects (Spring Boot/Node.js):
echo   - Spring Boot: mvn spring-boot:run
echo   - Node.js: npm start or npm run dev
echo   - Check API at: http://localhost:8080 or specified port
echo.
echo ============================================================================
echo.

pause
endlocal

