#!/bin/sh
#스크립트 안에서 cd 명령어로 다른 디렉터리로 이동하고 나서 원래 디렉터리로 간단히 돌아가고 싶을 때 이용합니다 . 

# 괄호 안은 서브셸이 되므로 디렉터리 이동은 이 안에서만 유효 .  #1
(
    echo "Archive: /var/tmp/archive.tar"
    cd /var/tmp
    tar cvf archive.tar *.txt

)

# 스크립트 실행은 현재 디렉터리에서 처리 
echo "Start: command.sh"
./command.sh
