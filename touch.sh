#!/bin/sh
#touch 명령어로 타임스탬프를 갱신하는 초기화 스크립트 등에서 존재하지 않는 파일을 만들고 싶을 때 사용합니다 . 

#[YYYMMDDhhmm.SS]로 시간 지정 
timestamp="202112201907.45"

#파일 타임스탬프 갱신

#-c 옵션이 있으므로 lock 파일은 신규 파일을 만들지 않음 

touch -t $timestamp app1.log        #1
touch -c -t $timestamp lock.tmp     #2
