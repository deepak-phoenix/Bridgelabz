#!/bin/bash

# variables
fliprange=50
count=0
declare -a coinToss
declare -a coinTossDoubles
declare -a coinTossTriple
declare -a doublePrecentage
declare -a triplePercentage

# portals
portalCoinFlip=0

# functions
flipCoin(){
    range=$1
    portalCoinFlip=$(($RANDOM % $range))
}

countSingle(){

    if test $portalCoinFlip -eq 0
    then
        # echo "Head"
        coinToss[0]=$((${coinToss[0]} + 1))
    elif test $portalCoinFlip -eq 1
    then
        # echo "tail"
        coinToss[1]=$((${coinToss[1]} + 1))
    fi

}

calculateSingle(){
    headPercentage=`echo "(${coinToss[0]} / $fliprange) * 100" | bc -l`
    tailPercentage=`echo "(${coinToss[1]} / $fliprange) * 100" | bc -l`
    echo "Head occurance percentage is $headPercentage"
    echo "Tail occurance precentage is $tailPercentage"
    if (( $(echo "$headPercentage == $tailPercentage" |bc -l) ))
    then
        echo "Draw"
    elif (( $(echo "$headPercentage > $tailPercentage" |bc -l) ))
    then
        echo "head is winner $headPercentage"
    else
        echo "tail is the winner $tailPercentage"
    fi
}

countDouble(){
    case $portalCoinFlip in
        0)
            # HH
            coinTossDoubles[0]=$((${coinTossDoubles[0]} + 1))
        ;;
        1)
            # HT
            coinTossDoubles[1]=$((${coinTossDoubles[1]} + 1))
        ;;
        2)
            # TH
            coinTossDoubles[2]=$((${coinTossDoubles[2]} + 1))
        ;;
        3)
            # TT
            coinTossDoubles[3]=$((${coinTossDoubles[3]} + 1))
        ;;
    esac
}

calculateDouble(){
    doublePrecentage[0]=`echo "(${coinTossDoubles[0]} / $fliprange) * 100" | bc -l`
    doublePrecentage[1]=`echo "(${coinTossDoubles[1]} / $fliprange) * 100" | bc -l`
    doublePrecentage[2]=`echo "(${coinTossDoubles[2]} / $fliprange) * 100" | bc -l`
    doublePrecentage[3]=`echo "(${coinTossDoubles[3]} / $fliprange) * 100" | bc -l`
    echo "HH occurance percentage is ${doublePrecentage[0]}"
    echo "HT occurance percentage is ${doublePrecentage[1]}"
    echo "TH occurance precentage is ${doublePrecentage[2]}"
    echo "TT occurance precentage is ${doublePrecentage[3]}"
    echo "Winner percentage is you can check above"
}

countTriple(){
    case $portalCoinFlip in
        0)
            coinTossTriple[0]=$((${coinTossTriple[0]} + 1))
        ;;
        1)
            coinTossTriple[1]=$((${coinTossTriple[1]} + 1))
        ;;
        2)
            coinTossTriple[2]=$((${coinTossTriple[2]} + 1))
        ;;
        3)
            coinTossTriple[3]=$((${coinTossTriple[3]} + 1))
        ;;
        4)
            coinTossTriple[4]=$((${coinTossTriple[4]} + 1))
        ;;
        5)
            coinTossTriple[5]=$((${coinTossTriple[5]} + 1))
        ;;
        6)
            coinTossTriple[6]=$((${coinTossTriple[6]} + 1))
        ;;
        7)
            coinTossTriple[7]=$((${coinTossTriple[7]} + 1))
        ;;
    esac
}


calculateTriple(){
    triplePercentage[0]=`echo "(${coinTossTriple[0]} / $fliprange) * 100" | bc -l`
    triplePercentage[1]=`echo "(${coinTossTriple[1]} / $fliprange) * 100" | bc -l`
    triplePercentage[2]=`echo "(${coinTossTriple[2]} / $fliprange) * 100" | bc -l`
    triplePercentage[3]=`echo "(${coinTossTriple[3]} / $fliprange) * 100" | bc -l`
    triplePercentage[4]=`echo "(${coinTossTriple[4]} / $fliprange) * 100" | bc -l`
    triplePercentage[5]=`echo "(${coinTossTriple[5]} / $fliprange) * 100" | bc -l`
    triplePercentage[6]=`echo "(${coinTossTriple[6]} / $fliprange) * 100" | bc -l`
    triplePercentage[7]=`echo "(${coinTossTriple[7]} / $fliprange) * 100" | bc -l`
    echo "HHH occurance percentage is ${triplePercentage[0]}"
    echo "HHT occurance percentage is ${triplePercentage[1]}"
    echo "HTH occurance precentage is ${triplePercentage[2]}"
    echo "HTT occurance precentage is ${triplePercentage[3]}"
    echo "THH occurance precentage is ${triplePercentage[4]}"
    echo "THT occurance precentage is ${triplePercentage[5]}"
    echo "TTH occurance precentage is ${triplePercentage[6]}"
    echo "TTT occurance precentage is ${triplePercentage[7]}"
    echo "Winning percentage is you can check above"
}


# brains
while test $count -lt $fliprange
do
    flipCoin 2
    countSingle
    flipCoin 4
    countDouble
    flipCoin 8
    countTriple
    count=$(($count + 1))
done
calculateSingle
calculateDouble
calculateTriple
