@echo off
set destDir=d:\software\GreenSoftware\apache-tomcat-7.0.54\webapps\struts2
set srcDir=f:\GitHub\javassh\struts2


rmdir %destDir% /s /q
cp %srcDir% %destDir% -r

pause()
