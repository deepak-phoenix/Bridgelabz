#! /bin/bash -x

# dice number 1
rn1=$RANDOM
dice1=$((rn1%6+1))
# dice number 2
rn2=$RANDOM
dice2=$((rn2%6+1))
# adding two dice number and printing it
echo $((dice1+dice2))
