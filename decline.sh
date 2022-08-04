#!/bin/sh

outdir="newdir"                 #1
if [ ! -d "$outdir" ]; then 
    echo "Not a directory: $outdir"
    exit 1
fi                              #2

for filename in *.js            #3
do
    sed '/^[[:blank:]]*$/d' "$filename" > "${outdir}/${filename}" #4
done