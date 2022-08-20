#!/bin/sh

#갱신된 파일 목록 확인하는 스크립트 입니다 

logdir="/var/log/myapp"

#7일 전부터 1일 전까지 갱신된 파일 목록 보기 

find $logdir -name "*.log" -mtime -4 -mtime +1 -print
