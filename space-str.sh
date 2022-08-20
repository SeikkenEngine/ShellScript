#!/bin/sh
#공백 문자를 포함한 문자열을 한 문장으로 다루고 싶을 때 사용합니다 . 
result="invalid value"

if [ "$result" = "invalid value" ]; then      #1

    echo "ERROR:$result" 1>&2
    exit 1
fi
