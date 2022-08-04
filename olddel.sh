#!/bin/sh

#비교대상 파일
log1="log1.log"
log2="log2.log"

#인수 파일이 존재하는지 확인 후 존재 하지 않으면 종료 

filecheck()
{

    if [ ! -e "$1" ]; then
        echo "ERROR : File $1 does not exist." >&2
        exit 1;
    fi

}

filecheck "$log1"
filecheck "$log2"

#두 파일을 비교, 오래된쪽 삭제 

if [ "log1" -nt "$log2" ]; then 
    echo "[$log1]->newer, [$log2]->older"
    rm $log2
else
    echo  "[$log2]->newer,[$log1]->older"
    rm $log1
fi