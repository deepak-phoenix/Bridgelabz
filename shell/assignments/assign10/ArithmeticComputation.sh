#!/bin/bash

# variables
declare -a expressArray
declare -a expressDict
a=0
b=0
c=0
exp1=0
exp2=0
exp3=0
exp4=0
# portals
portalSmallpos=0


# function

findSmallest(){
    local range=$1
    small=10000
    for ((counter=0; counter < $range; counter++))
    do
        value=${expressArray[$counter]}
        if [ $small -gt $value ]
        then
            small=$value
        fi
    done
    for ((pos=0; pos < $range; pos++))
    do
        if [ $small == ${expressArray[$pos]} ]
        then
            portalSmallpos=$pos
        fi
    done
}

sortD(){
    local checkCounter=4
    for ((sortCounter=0; sortCounter < 4; sortCounter++))
    do
        findSmallest $checkCounter
        tmp=${expressArray[$portalSmallpos]}
        checkCounter=$(($checkCounter - 1))
        expressArray[$portalSmallpos]=${expressArray[$checkCounter]}
        expressArray[$checkCounter]=$tmp
    done
}

printDict(){
    count=0
    for element in ${expressDict[@]}
    do
        echo "$element"
        expressArray[$count]=$element
        count=$(($count + 1))
    done
}
printArray(){
    for arrayElement in ${expressArray[@]}
    do
        echo $arrayElement
    done
}

readInputs(){
    echo "Enter 3 numbers"
    read a
    read b
    read c
}

expressions(){
    exp1=`echo "$a + $b * $c" | bc`
    expressDict["exp1"]=$exp1
    exp2=`echo "$a * $b + $c" | bc`
    expressDict["exp2"]=$exp2
    exp3=`echo "$c + $a / $b" | bc`
    expressDict["exp3"]=$exp3
    exp4=`echo "$a % $b + $c" | bc`
    expressDict["exp4"]=$exp4
}

# brains
readInputs
expressions
echo "dictonary & Ascending array"
printDict
sortD
echo "Descending array"
printArray
