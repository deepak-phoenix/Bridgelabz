#!/bin/bash
value=0
read -p "Enter a number: " number

for (( count=1; count <= $number; count++ ))
do
    # value=`echo " 1 / $count + $value" | bc -l`
    printf "1/$count +"
done
echo "1/$number"
