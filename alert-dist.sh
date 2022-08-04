#!/bin/sh

used_limit=90                                   #1
tmpfile="df.tmp.$$"                             #2

df -P | awk 'NR >= 2 {print $5,$6}' > "$tmpfile"#3

while read percent mountpoint                   #4
do
    percent_val=${percent%\%}                    #5
 
    if [ "$percent_val" -ge "$used_limit" ]; then  #6
        date_str=$(date '+%Y/%m/%d/%H:%M%S')      #7
        echo "[$date_str] Disk Capacity Alert: $mountpoint($percent_used)"
        /home/user1/bin/alert.sh
    fi
done < "$tmpfile"

rm -rf "$tmpfile"                                    #8