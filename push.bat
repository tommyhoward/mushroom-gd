@echo off

:: Set the default commit message
set "commitMessage=Save"

:: Check if a command-line argument (%1) was provided
if not "%~1"=="" (
    :: If an argument was provided, use it as the commit message
    set "commitMessage=%~1"
)

:: Execute the Git commands
git add .
git commit -m "%commitMessage%"
git push

:: Pause for 3 seconds
timeout /t 3 /nobreak