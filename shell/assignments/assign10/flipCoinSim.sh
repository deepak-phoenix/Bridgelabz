#!/bin/bash

# variables
head=0
tails=1

counter=0
range=21
headCounter=0
tailCounter=0
# portals


# functions
coinFlip(){
    coin=$(($RANDOM % 2))
    if [ $coin == $head ]
    then
        echo "Head"
        headCounter=$(($headCounter + 1))
    else
        echo "Tail"
        tailCounter=$(($tailCounter + 1))
    fi
}

findWinner(){
    if [ $headCounter -ge $range ]
    then
        echo "head is winner by $(($headCounter - $tailCounter))"
    elif [ $tailCounter -ge $range ]
    then
        echo "Tails is winner by $(($tailCounter - $headCounter))"
    fi
}


# brains

while test $tailCounter -lt $range -a $headCounter -lt $range
do
    coinFlip
    counter=$(($counter + 1))
done
findWinner
