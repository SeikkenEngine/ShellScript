#!/bin/sh
# 파일의 퍼미션, 타임스탬를를 유지한채 복사하는 스크립트 

backup_dir="/home/vscode/backup"

#myapp 디렉터리를 $backup_dir 밑에 복사 

while getopts "a" option

do
    case $option in
        a)
            cp -a myapp "$backup_dir"
          exit
          ;;
    esac
done 

cp -R myapp "$backup_dir"
