#!/bin/sh

quote="[\"']"       #1
match="[^\"']*"     #2

while read line 
do 
    href=$(expr "$line" : ".*href=${quote}\(${match}\)${quote}.*") #3
   
        echo $href
    

done < index.html 