@echo off
for /r %%i in (*.class) do mv %%~nxi f:\GitHub\javassh\test\WEB-INF\classes\%%~nxi 

