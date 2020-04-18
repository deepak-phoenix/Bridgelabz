#!/bin/bash

# variables
head=0
tail=1

headCounter=0
tailCounter=0
range=50
count=0
declare -a coinToss
declare -a coinTossDoubles

# portals
doublets=""

# functions

flipCoin(){
    flip=$(($RANDOM % 2))
    if test $head -eq $flip
    then
        # echo "Head"
        coinToss[$count]="Head"
        headCounter=$(($headCounter + 1))
        doublets=$doublets"H"
    elif test $tail -eq $flip
    then
        # echo "tail"
        coinToss[$count]="Tail"
        tailCounter=$(($tailCounter + 1))
        doublets=$doublets"T"
    fi
    count=$(($count + 1))
}

calculate(){
    headPercentage=`echo "($headCounter / $count) * 100" | bc -l`
    tailPercentage=`echo "($tailCounter / $count) * 100" | bc -l`
    echo "Head occurance percentage is $headPercentage"
    echo "Tail occurance precentage is $tailPercentage"
}

countDouble(){
    case $doublets in
        "HH")
            coinTossDoubles["1"]=$((${coinTossDoubles["1"]} + 1))
        ;;
        "HT")
            coinTossDoubles["2"]=$((${coinTossDoubles["2"]} + 1))
        ;;
        "TH")
            coinTossDoubles["3"]=$((${coinTossDoubles["3"]} + 1))
        ;;
        "TT")
            coinTossDoubles["4"]=$((${coinTossDoubles["4"]} + 1))
        ;;
    esac
}

calculateDouble(){
    customRange=$(($range / 2))
    HHpercentage=`echo "(${coinTossDoubles["1"]} / $customRange) * 100" | bc -l`
    HTpercentage=`echo "(${coinTossDoubles["2"]} / $customRange) * 100" | bc -l`
    THpercentage=`echo "(${coinTossDoubles["3"]} / $customRange) * 100" | bc -l`
    TTpercentage=`echo "(${coinTossDoubles["4"]} / $customRange) * 100" | bc -l`
    echo "HH occurance percentage is $HHpercentage"
    echo "HT occurance percentage is $HTpercentage"
    echo "TT occurance precentage is $TTpercentage"
    echo "TH occurance precentage is $THpercentage"
}

# brains
while test $count -lt $range
do
    doublets=""
    flipCoin
    flipCoin
    countDouble
done
calculate
calculateDouble
