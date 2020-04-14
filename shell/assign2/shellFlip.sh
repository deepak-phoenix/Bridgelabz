#! /bin/bash -x
# variables
head=0

read -p "How many time you want to filp? " numOfFlip
i=0
while [ $i -lt $numOfFlip ]
do
    ran=$(($RANDOM % 2))
    if (($ran == $head))
    then
        echo "Head"
    else
        echo "Tail"
    fi
    i=`expr $i + 1`
done
