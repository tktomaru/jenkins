@echo off
rem ���s�f�B���N�g�����擾
set current_dir=%~dp0
cd %current_dir%

cd jenkins
start "jenkins-win" /min ./jenkins-win/start-jenkins.bat

rem start "jenkins-linux" /min "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm "docker01"
