@echo off
rem カレントディレクトリを変更
set current_dir=%~dp0
cd %current_dir%

./tools/curl/curl.exe -X POST -u admin:password http://192.168.3.21:36001/exit

rem "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" setextradata "docker01" GUI/DefaultCloseAction SaveState
