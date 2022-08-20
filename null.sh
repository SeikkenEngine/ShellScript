#!/bin/sh
#  파일 내용 삭제 , 빈 파일로 만드는 스크립트 입니다.


#uptime 명령어 기록 파일 정의
uptimelog="uptime.log"

# 널 명령어로 빈파일 초기화 

:> $uptimelog   #1

#10초마다 6번, uptime 명령어 실행 
for i in 1 2 3 4 5 6   #2
do
    uptime >> $uptimelog   #3
    sleep 10
done
