#!/bin/sh
#  파일크기를 줄이기 위해 자바스크립트 파일에서 빈줄 제거하는 스크립트 입니다

outdir="newdir"                 #1
if [ ! -d "$outdir" ]; then 
    echo "Not a directory: $outdir"
    exit 1
fi                              #2

for filename in *.js            #3
do
    sed '/^[[:blank:]]*$/d' "$filename" > "${outdir}/${filename}" #4
done
