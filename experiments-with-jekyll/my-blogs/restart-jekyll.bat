@echo off
echo Stopping Jekyll container...
docker-compose down

echo Cleaning Jekyll cache...
if exist _site (
    rmdir /s /q _site
    echo Removed _site directory
)
if exist .jekyll-cache (
    rmdir /s /q .jekyll-cache
    echo Removed .jekyll-cache directory
)

echo Starting Jekyll with rebuild...
docker-compose up --build

