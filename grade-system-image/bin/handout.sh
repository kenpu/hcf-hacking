#!/bin/bash

names=`ls -1 $HOME/users`

for name in $names
do
    echo $name
    src=$HOME/exchange/problemsets/outbound/* 
    tgt=$HOME/users/$name
    cp -n -R $src $tgt
done
