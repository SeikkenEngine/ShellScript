#!/bin/sh
#arp 테이블에서 지정 ip 주소에 대응하는 mac 주소 표시하는 스크립트 입니다 


ipaddr="102.168.42.129"

macaddr=$(arp -ap | awk " /\($ipaddr\)/ {print \$4}") #1

if [ -n "$macaddr" ]; then                            #2
    echo "$ipaddr -> $macaddr"                        #3
else
    echo "there is no $ipaddr in ARP cache."          #4
fi 
