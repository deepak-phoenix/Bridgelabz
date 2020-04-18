#!/bin/bash 

# variables
head=0
tail=1

headCounter=0
tailCounter=0
range=10
count=0
declare -a coinToss
# portals


# functions

flipCoin(){
    flip=$(($RANDOM % 2))
    if test $head -eq $flip
    then
        echo "head"
        coinToss[$count]="Head"
        headCounter=$(($headCounter + 1))
    elif test $tail -eq $flip
    then
        echo "tail"
        coinToss[$count]="Tail"
        tailCounter=$(($tailCounter + 1))
    fi
    count=$(($count + 1))
}

calculate(){
    headPercentage=`echo "($headCounter / $range) * 100" | bc -l`
    tailPercentage=`echo "($tailCounter / $range) * 100" | bc -l`
    echo "Head occurance percentage is $headPercentage"
    echo "Tail occurance precentage is $tailPercentage"
}


# brains

while test $count -lt $range
do
    flipCoin
done
calculate
