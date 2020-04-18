#!/bin/bash -x

base=2

read -p "Enter a number: " number
for (( counter=1; counter <= $number; counter++ ))
do
    echo $(($base ** $counter))
done
