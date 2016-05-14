@ECHO OFF

SET DIR=%1
IF NOT EXIST %DIR%\NUL (
    ECHO Usage: make_paper source_dir
    EXIT /b -1
)

python publisher\build_paper.py %DIR%
IF %errorlevel% neq 0 (
    ECHO Error building paper %DIR%. Aborting
    EXIT /b 1
)
