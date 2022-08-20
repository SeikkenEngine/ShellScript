#!/bin/sh

# 디렉터리에 있는 파일과 디렉터리 수 조사 하는 스크립트 입니다 .
targetdir="/home/vscode/myapp"

filecount=$(find "$targetdir" -maxdepth 1 -type f -print | wc -l)
dircount=$(find "$targetdir" -maxdepth 1 -type d -print | wc -l)      #1

dircount=$(expr $dircount - 1)          #2

echo "대상 디렉터리 : $targetdir"
echo "파일 수 : $filecount"
echo "디렉터리 수 : $dircount"
