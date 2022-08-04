#!/bin/sh

#현재 디렉터리에 .html 파일이 대상

for htimlfile in *.html                 #1
do
    fname=$(basename $htmlfile.html)    #2


#<title> 태그 내용을 후방 참조\1로 추출 , 파일 출력 

    sed -n "s/^.*<title>\(.*\)<\/title>.*$/\1/p" $htmlfile > output/${fname}.txt #3
done
