#!/bin/bash -x
fact=1
read -p "Enter a number to find factorial: " number

for (( counter= $number; counter >= 1; counter-- ))
do
    fact=$(($fact * $counter))
done
echo $fact
