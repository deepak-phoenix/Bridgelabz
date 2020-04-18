#!/bin/bash -x

# variables
a=0
b=0
c=0
exp1=0
exp2=0
exp3=0
exp4=0
# portals



# function

readInputs(){
    echo "Enter 3 numbers"
    read a
    read b
    read c
}

expressions(){
    exp1=`echo "$a + $b * $c" | bc -l`
    exp2=`echo "$a * $b + $c" | bc -l`
    exp3=`echo "$c + $a / $b" | bc -l`
    exp4=`echo "$a % $b + $c" | bc -l`
}

# brains
readInputs
expressions
