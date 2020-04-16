#!/bin/bash
declare -a arrayName


largest(){

}
smallest(){

}

range=10
i=0
while [ $i -lt $range ]
do
    num=$RANDOM
    arrayName[$i]=$(($num%1000))
    i=`expr $i + 1`
done
for ele in ${arrayName[@]}
do
    echo $ele
done
