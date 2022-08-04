#!/bin/sh

targetdir="/home/vscode/myapp"

filecount=$(find "$targetdir" -maxdepth 1 -type f -print | wc -l)
dircount=$(find "$targetdir" -maxdepth 1 -type d -print | wc -l)      #1

dircount=$(expr $dircount - 1)          #2

echo "대상 디렉터리 : $targetdir"
echo "파일 수 : $filecount"
echo "디렉터리 수 : $dircount"