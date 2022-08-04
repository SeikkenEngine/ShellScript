#!/bin/sh

ipaddr="102.168.42.129"

macaddr=$(arp -ap | awk " /\($ipaddr\)/ {print \$4}") #1

if [ -n "$macaddr" ]; then                            #2
    echo "$ipaddr -> $macaddr"                        #3
else
    echo "there is no $ipaddr in ARP cache."          #4
fi 
