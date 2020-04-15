#!/bin/bash -x
money=100
winingLimit=200
flag=0
turns=0
winningPrize=10
bet=1

gambel() {
    win=0
    loss=1
    headCount=0
    tailCount=0
    winLimit=11
    toss=$(($RANDOM % 2))
    if [ $toss == $win ]
    then
        money=$(($money + $winningPrize))
    elif [ $toss == $loss ]
    then
        money=$(($money - $bet))
    fi
    if [ $money -ge $winingLimit ]
    then
        flag=1
        echo "Congrulations you have won"
    elif [ $money -le 0 ]
    then
        flag=1
        echo "Sorry you don't have money"
    fi
    turns=$(($turns + 1))
}

while [ $flag == 0 ]
do
    gambel start
done
echo $turns
