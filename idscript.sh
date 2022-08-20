#!/bin/sh
#허용된 사용자만 스크립트 실행가능하게 하는 스크립트 입니다 .  

script_user="batch1"

if [ $(id -nu) = "$script_user" ]; then 
    ./batch_program
else
    echo "[ERROR] $script_user 사용자로 실행하세요." >&2
    exit 1
fi 
