#!/bin/bash

pkglist="httpd zsh xz git"   #1

for pkg in $pkglist          #2
do
    yum -y install $pkg       #3
done