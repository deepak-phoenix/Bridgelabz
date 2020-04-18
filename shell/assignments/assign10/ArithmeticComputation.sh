#!/bin/bash -x

# variables
declare -a expressDict
a=0
b=0
c=0
exp1=0
exp2=0
exp3=0
exp4=0
# portals



# function

printDict(){
    for element in ${expressDict[@]}
    do
        echo "$element"
    done
    echo ${expressDict["exp4"]}
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
printDict
