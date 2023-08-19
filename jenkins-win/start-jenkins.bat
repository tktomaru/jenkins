@echo off
rem 実行ディレクトリを取得
set current_dir=%~dp0
cd %current_dir%

echo ■ 参考
echo %ProgramFiles%
echo C:\PROGRA~1
echo %ProgramFiles(x86)%
echo C:\PROGRA~2
@rem ホームの設定
set JENKINS_HOME=C:\workspace\jenkins\jenkins_home

@rem ポート36000を指定してwarを実行する。
start "" java -Djava.net.preferIPv4Stack=true -jar .\war\jenkins2.375.3.war --httpPort=36000
