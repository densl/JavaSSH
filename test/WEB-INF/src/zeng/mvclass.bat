@echo off
rm *~
for /r %%i in (*.class) do mv %%~nxi f:\GitHub\javassh\test\WEB-INF\classes\zeng\%%~nxi 

