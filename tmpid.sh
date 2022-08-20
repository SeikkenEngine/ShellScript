#/bin/sh
#스크립트를 동시에 실행할 때 임시파일이 중복되지 않도록 할때 사용하는 스크립트 입니다.

tmpfile="tmp.$$"    #1

date > $tmpfile     #2
sleep 10 


cat $tmpfile        #3
rm -f $tmpfile
