#!/bin/sh
# HTML 파일에서 특정 속성값 얻는 스크립트 입니다 .   

quote="[\"']"       #1
match="[^\"']*"     #2

while read line 
do 
    href=$(expr "$line" : ".*href=${quote}\(${match}\)${quote}.*") #3
   
        echo $href
    

done < index.html 
