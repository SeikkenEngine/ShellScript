#!/bin/sh
# 여러 셸 스크립트에서 공통된 설정 값이나 함수를 사용하는데 그런 값과 함수를 외부 파일로 정의 하고 싶을 때 사용합니다.
. ./env.sh   #1

nowtime

cp -i -v large-file.tar.gz "$WORK_DIR"

nowtime
