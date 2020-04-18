#!/bin/bash -x

# variables
head=0
tails=1

counter=0
range=10
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


# brains

while [ $counter -lt $range ]
do
    coinFlip
    counter=$(($counter + 1))
done
