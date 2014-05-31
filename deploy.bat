@echo off
set destDir=d:\software\GreenSoftware\apache-tomcat-7.0.54\webapps\test
set srcDir=test

rmdir %destDir% /s /q
cp %srcDir% %destDir% -r

pause()
