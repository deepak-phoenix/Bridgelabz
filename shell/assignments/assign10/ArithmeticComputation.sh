#!/bin/bash -x

# variables
a=0
b=0
c=0
exp1=0
exp2=0
exp3=0

# portals



# function

readInputs(){
    echo "Enter 3 numbers"
    read a
    read b
    read c
}

expressions(){
    exp1=$(($a + $b * $c))
    exp2=$(($a * $b + $c))
    exp3=$(($c + $a / $b))
}

# brains
readInputs
expressions
