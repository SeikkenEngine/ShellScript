#!/bin/sh



idle_limit=100.0  #-------------1

cpu_idle=$(mpstat 1 5 | tail -n 1 | awk '{print $NF}' )  #-----------2


is_alert=$(echo "$cpu_idle < $idle_limit" | bc )         #----------3


if [ "$is_alert" -eq 1 ]; then                           #------------4



    date_str=$(date '+%Y/%m/%d/%H:%M%S')                  #----------------5



    echo "[$date_str] CPU %idle Alert : $cpu_idle (%)"   #------------6
    /home/ec2-user/alert.sh


fi

