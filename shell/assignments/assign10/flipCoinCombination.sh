#!/bin/bash -x

# variables
head=0
tail=1

# portals


# functions

flipCoin(){
    flip=$(($RANDOM % 2))
    if test $head -eq $flip
    then
        echo "head"
    elif test $tail -eq $flip
    then
        echo "tail"
    fi
}


# brains
flipCoin
