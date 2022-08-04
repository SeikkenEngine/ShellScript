#!/bin/sh

# ping 실행 결과 상태, 0이면 성공이므로 1로 초기화 합니다 

result=1     #1                                                

#대상 서버가 명령행 인수로 지정되지 않으면 에러 종료 
if [ -z "$1" ]; then                     #
    echo "대상 호스트를 입력하세요">&2    #
    exit 1                              #
fi                                      #2

#ping 명령어를 3회 실행, 성공하면 result를 0으로 
i=0                                     #3
while [ $i -lt 3 ]
do
    #ping 명령어 실행, 종료 상태만 필요합니다 
    #/dev/null 에 리다이렉트 
    ping -c 1 "$1">/dev/null            #4

    #ping 명령어 종료 상태 판단하며 result=0 으로 반복문 호출 
    #실패하면 3초 대기 후 실행 
    if [ $? -eq 0 ]; then               #5
        result=0
        break
    else
        sleep 3
        i=$(expr $i + 1)
    fi
done
#현재 시각을 [yyyy/mm/dd] 형태로 조합 
date_str=$(date '+%Y/%m/%d %H:%M:%S')  #6

#ping  결과를 $result 로 판별해서 표시 
if [ $result -eq 0 ]; then             #
    echo "[$date_str] Ping OK: $1"     #
else                                   #
    echo "[$date_str] Ping NG : $1"    #
fi                                     #7
