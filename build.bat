@echo off

:menu
ECHO !
ECHO Options : (1)-For Watcom  / (2)-For GCC / (3)-Exit

choice /c 1234 /n /m "select an option: "


if errorlevel 3 goto :EXIT
if errorlevel 2 goto :op2
if errorlevel 1 goto :op1

goto :menu

:op1
cls
echo Open Watcom Compiler ## Debug and Otimize Mode
echo x32_80387
echo.
@wcc386 /6r -fp6 -ms -bm -ol -om -op -ot -oz -zkl -zdp -zi -ot -hc -hd -hw -oh "src/cube.c" -i="src/include" ^
-DVK_USE_PLATFORM_WIN32_KHR ^
-DVK_PROTOTYPES ^
-D_CRT_SECURE_NO_WARNINGS ^
-D_USE_MATH_DEFINES ^
-D_DEBUG ^
-D_WINDOWS ^
 	 2>&1 | findstr /V /C:"Open Watcom" /C:"Portions" /C:"See" 
echo.
echo.

@wlink name vk_cube_wat.exe debug watcom lines file *.obj  Library vulkan-1.lib ^
	 	 2>&1 | findstr /V /C:"Open Watcom" /C:"Portions" /C:"See"

del cube.obj
del cube.err
echo.
echo.
pause
goto :menu

:op2
cls
echo GCC_MINGW Compiler ## Normal Mode
echo.
@gcc -std=c89 -I./src/include -m32 "src/cube.c" -L./ -lvulkan-1 -lgdi32 -o vk_cube_gcc.exe ^
-DVK_USE_PLATFORM_WIN32_KHR ^
-DVK_PROTOTYPES ^
-D_CRT_SECURE_NO_WARNINGS ^
-D_USE_MATH_DEFINES ^
-D_DEBUG ^
-D_WINDOWS 
echo.
echo.
pause
goto :menu

:op2
cls
exit


rem echo.
REM @wcc386 /6r -fp6 -ms -bm -ol -om -op -ot -oz -zkl -zdp -zi -ot -hc -hd -hw -oh cube.c -i=include
rem echo.
rem echo.
rem @gcc -std=c89 -I./include -m32 cube.c -L./ -lvulkan-1 -o vk_cube_gcc.exe 
rem echo.
rem echo.


rem echo.
REM @wlink name vk_cube.exe file *.obj Library vulkan-1.lib
REM @wlink name vk_cube.exe debug watcom lines file *.obj  Library vulkan-1.lib
rem echo.


del cube.obj
del cube.err




















rem pause | echo THE BATCH ENDS
