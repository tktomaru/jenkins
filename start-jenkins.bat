@echo off
rem 実行ディレクトリを取得
set current_dir=%~dp0
cd %current_dir%

cd jenkins
start "jenkins-win" /min ./jenkins-win/start-jenkins.bat

rem start "jenkins-linux" /min "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" startvm "docker01"
