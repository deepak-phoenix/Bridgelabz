#!/bin/bash -x

# variables
head=0
tail=1

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
    elif [ $coin == $tail ]
    then
        echo "Tail"
        tailCounter=$(($tailCounter + 1))
    fi
}

findWinner(){
    if test $tailCounter -eq $headCounter
    then
        echo "Draw match"
        val=0
        while test $val -lt 2
        do
            coinFlip
            val=$(($headCounter - $tailCounter))
            if test $val -lt 0
            then
                val=$(($val * -1))
            fi
        done
        findWinner
    elif  test $headCounter -ge $range -a $headCounter -gt $tailCounter
    then
        echo "head is winner by $(($headCounter - $tailCounter))"
    elif test $tailCounter -ge $range -a $tailCounter -gt $headCounter
    then
        echo "Tails is winner by $(($tailCounter - $headCounter))"
    fi
}


# brains

while test $tailCounter -lt $range -a $headCounter -lt $range
do
    coinFlip
done
findWinner
