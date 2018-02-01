@echo off
echo "---------start ACL---------"
set loopcount=5
cd c:\acl\
:loop
set /a loopcount=loopcount-1
SetACL.exe -on "\\192.168.0.6\f1" -ot file -actn ace -ace "n:192.168.0.6\user%loopcount%;p:full"
echo "user%loopcount% ACL set up success!!!"
echo "-----------------------------------------------"
if %loopcount%==0 goto exitloop
goto loop
:exitloop
echo "----------final ACL---------"
pause