#/bin/sh
#작은 따옴표로 둘러싼 문자열 안에서 변수 확장이나 작은 따옴표 기호를 사용하고 싶을 때 사용하는 스크립트 입니다 . 


price=100
str='it costs $'$price'? i can '\''t believe it !'
echo $str 
