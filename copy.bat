@echo off
pause
set basedir=%~dp0
echo basedir = %basedir%
if exist %UserProfile%/.android (
    echo %UserProfile%/.android already exists
    pause
    exit
)
if exist %UserProfile%/.AndroidStudio3.1 (
    echo %UserProfile%/.AndroidStudio3.1 already exists
    pause
    exit
)
if exist %UserProfile%/.gradle (
    echo %UserProfile%/.gradle already exists
    pause
    exit
)
if exist %localappdata%/Android/Sdk (
    echo %localappdata%/Android/Sdk already exists
    pause
    exit
)
robocopy %basedir%/.android %UserProfile%/.android /s /e
robocopy %basedir%/.gradle %UserProfile%/.gradle /s /e
robocopy %basedir%/.AndroidStudio3.1 %UserProfile%/.AndroidStudio3.1 /s /e
robocopy %basedir%/Sdk %localappdata%/Android/Sdk /s /e
echo CopyComplete
pause
