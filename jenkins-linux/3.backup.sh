#!/bin/bash
echo スクリプトのあるディレクトリへ移動

cd `dirname $0`  
echo ■ backup
sudo tar cvf /media/ras1/901B-F746/jenkins-backup/jenkins-linux-`date +%Y%m%d%H%M`.tar ./*
