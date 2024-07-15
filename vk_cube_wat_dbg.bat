@echo off

ECHO Options : 
echo [1] - normal start 
echo [2] - (--validate) arg 
echo [3] - Exit

choice /c 123 /n /m "select an option: "

if errorlevel 3 goto :EXIT
if errorlevel 2 goto :op2
if errorlevel 1 goto :op1


goto :menu

:op1
cls
echo.
vk_cube_wat.exe
pause
goto :menu

:op2
cls
echo.
@vk_cube_wat.exe --validate
pause
goto :menu


echo.
echo.

rem pause