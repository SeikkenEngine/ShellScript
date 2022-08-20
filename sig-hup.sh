#!/bin/sh
# HUP 시그널을 받아서 실행 중에 설정 파일을 읽어드리는 스크립트 입니다 . 

loadconf(){
    ../setting.conf
}                                                   #1

trap 'loadconf' HUP                                 #2        

loadconf                                            #3
while :                                             #4
do
    uptime >> "${UPTIME_FILENAME}"                  #5
    sleep 1
done

