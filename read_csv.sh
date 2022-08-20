#!/bin/sh
#CSV 파일에서 값을 추출하는 스크립트 입니다. 
 

match_id=1

csvfile="data.csv"

 

if [ ! -f "$csvfile" ]; then

    echo "There is no CSV : $csvfile" >$2

fi

 

while read line

do

    id=$(echo $line | cut -f 1 -d ',')

    name=$(echo $line | cut -f 2 -d ',')

 

    if [ "$id" -eq "$match_id" ]; then

        echo "$name"

        fi

done < "$csvfile"
