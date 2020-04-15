#!/bin/bash -x
flag=0
head=0
tail=1
headCount=0
tailCount=0
winLimit=11
while [ $flag == 0 ]
do
    toss=$(($RANDOM % 2))
    if [ $toss == $head ]
    then
        headCount=$(($headCount + 1))
    elif [ $toss == $tail ]
    then
        tailCount=$(($tailCount + 1))
    fi
    if [ $headCount -ge $winLimit ]
    then
        flag=1
        echo "head is winner"
    elif [ $tailCount -ge $winLimit ]
    then
        flag=1
        echo "tail is winner"
    fi
done
