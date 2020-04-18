#!/bin/bash -x

# variables
head=0
tails=1

# portals


# functions
coinFlip(){
    coin=$(($RANDOM % 2))
    if [ $coin == $head ]
    then
        echo "Head"
    else
        echo "Tail"
    fi
}


# brains
coinFlip
