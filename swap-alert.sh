#!/bin/sh

swapcount_limit=10                                                    #1   
 
swapcount=$(vmstat 1 6 | awk 'NR >=4 {sum += $7 + $8} END{print sum}')#2  

if [ "$swapcount" -ge "$swapcount_limit" ]; then                      #3

    date_str=$(date '+%Y/%m/%d %H:%M:%S')                             #4
 
    echo "[$date_str] Swap Alert: $swapcount (si+so)"                 #5
    /home/user1/bin/alert.sh
fi 