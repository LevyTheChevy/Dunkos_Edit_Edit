@ECHO OFF
:choice
set /P c=Would you like to lelete your sevrer cache?[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice
:somewhere
echo "Deleting server cache"
rd /s /q "C:\Dunko\cache\"
echo -
echo FXServer
echo -
start C:\Dunko\run.cmd +exec server.cfg
exit
:somewhere_else
echo
@echo off
echo -
echo FXServer
echo -
start C:\Dunko\run.cmd +exec server.cfg
exit