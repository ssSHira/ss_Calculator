@echo off
title ^< ss_Calculator by shira ^>
set "hidecursor=<nul set /p=[?25l"
set "showcursor=<nul set /p=[?25h"
:menu
%showcursor%
cls
echo.
echo [40;33m[[40;91m-[40;33m] [40;37mWelcome to the ss_Calculator!
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;33mFirst choose between:
echo [40;33m[[40;91m-[40;33m] [40;31m   1 [40;37m== Addition     [40;31m2 [40;37m== Subtraction     [40;31m3 [40;37m== Multiplication     [40;31m4 [40;37m== Division
echo.
set /p mode=[40;33m[[40;31m/[40;33m][40;91m--$ [40;37m

: : choices
if %mode% == 1 goto:add
if %mode% == 2 goto:sub
if %mode% == 3 goto:mul
if %mode% == 4 goto:div
echo [40;33m[[40;91m-[40;33m] [40;33mWrong Number...
timeout 4 >nul
goto:menu

pause >nul
goto:menu

:add
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;37mAddition
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m/First Number\
set /p num1=[40;33m[[40;31m/[40;33m][40;91m-$ [40;37m
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m/Second Number\
set /p num2=[40;33m[[40;31m/[40;33m][40;91m-$ [40;37m
set /a sum=num1+num2
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m-Result-
echo [40;33m[[40;91m-[40;33m] [40;37m%num1% + %num2% == [40;33m%sum%
%hidecursor%
pause >nul
goto:menu

:sub
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;37mSubraction
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m/First Number\
set /p num1=[40;33m[[40;31m/[40;33m][40;91m-$ [40;37m
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m/Second Number\
set /p num2=[40;33m[[40;31m/[40;33m][40;91m-$ [40;37m
set /a sum=num1-num2
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m-Result-
echo [40;33m[[40;91m-[40;33m] [40;37m%num1% - %num2% == [40;33m%sum%
%hidecursor%
pause >nul
goto:menu

:mul
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;37mMultiplication
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m/First Number\
set /p num1=[40;33m[[40;31m/[40;33m][40;91m-$ [40;37m
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m/Second Number\
set /p num2=[40;33m[[40;31m/[40;33m][40;91m-$ [40;37m
set /a sum=num1*num2
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m-Result-
echo [40;33m[[40;91m-[40;33m] [40;37m%num1% x %num2% == [40;33m%sum%
%hidecursor%
pause >nul
goto:menu

:div
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;37mDivision
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m/First Number\
set /p num1=[40;33m[[40;31m/[40;33m][40;91m-$ [40;37m
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m/Second Number\
set /p num2=[40;33m[[40;31m/[40;33m][40;91m-$ [40;37m
set /a sum=num1/num2
echo.
echo.
echo [40;33m[[40;91m-[40;33m] [40;37m-Result-
echo [40;33m[[40;91m-[40;33m] [40;37m%num1% : %num2% == [40;33m%sum%
%hidecursor%
pause >nul
goto:menu