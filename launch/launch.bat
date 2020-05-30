@echo off
REM
REM Windows .bat file
REM 
REM https://github.com/foo123/scripts
REM
REM
REM
REM Script to launch another windows program or script with given parameters, without opening a command-prompt
REM needs the invis.vbs file in same folder
REM
REM launch.bat
rem throw the first parameter away
set THISDIR=%~dp0
set COMMAND=%1
shift
set params=%1
:loop
shift
if [%1]==[] goto afterloop
set params=%params% %1
goto loop
:afterloop
wscript.exe "%THISDIR%\invis.vbs" "%THISDIR%\%COMMAND%.bat %params%"