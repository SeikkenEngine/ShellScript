#!/bin/sh

d_flag=0                    #1

while getopts "d" option    #2

do 
    case $option in
        d)
         d_flag=1
         ;;
        \?)
         exit 1
         ;;
    esac
done

shift $(expr $OPTIND - 1)   #3
filename="$1"

if [ ! -f "$filename" ]; then 
    echo "대상 파일이 존재하지 않습니다."
    exit 1 
fi                          #4

if [ "$d_flag" -eq 1 ]; then #5
    awk '{print $1}' "$filename" | grep '^[0-9]\{3\}-[0-9]\{4\}$' | sed "s/-//" #6 
else
    awk '{print $1}' "$filename" | grep '^[0-9]\{7\}$' | sed "s/\(...\)/\1-/"    #7
fi