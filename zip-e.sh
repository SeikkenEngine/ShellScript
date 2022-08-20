#!/bin/sh
#중요한 정보를 담은 로그 파일 등을 암호가 있는 zip으로 아카이브 합니다 . 

logdir="/home/vscode/myapp"

cd "$logdir"

#/home/vscode/myapp/log 디렉터리의 로그파일을 
#암호 걸린 zip으로 아카이브 

zip -e -r log.zip log
