#!/bin/sh

loadconf(){
    ../setting.conf
}                                                   #1

trap 'loadconf' HUP                                 #2        

loadconf                                            #3
while :                                             #4
do
    uptime >> "${UPTIME_FILENAME}"                  #5
    sleep 1
done

