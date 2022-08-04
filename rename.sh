#!/bin/sh

for filename in *                        #-------------1
do                                   
    case "$filename" in                   #-------------2
        *.htm | *.html)                   #-------------3

        #파일 명 앞 부분 취득 
        headname=${filename%.*}          #-------------4

        #파일확장명 전환                  

        mv "$filename" "${headname}.txt" #--------------5
    ;;
    esac
done 