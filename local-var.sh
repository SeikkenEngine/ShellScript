   #!/bin/sh

 #지역변수를 함수 안에 정의해서 호출한 곳의 변수가 파괴 되지 않게 하는 스크립트 입니다 

DIR=/var/tmp

ls_home()

{

    #변수 DIR을 함수 내부 변수로 정의

    local DIR                   #1

 

    DIR=~/$1                    #2

 

    echo "directory : $DIR"

    ls $DIR

 

}

 

ls_home logdir                  #3

echo "directory:$DIR "          #4

 

ls $DIR
