#!/bin/bash
#서버 구축 작업에서 패키지 설치를 자동화 하고 싶을 때 사용하는 스크립트 코드 입니다 . 

pkglist="httpd zsh xz git"   #1

for pkg in $pkglist          #2
do
    yum -y install $pkg       #3
done
