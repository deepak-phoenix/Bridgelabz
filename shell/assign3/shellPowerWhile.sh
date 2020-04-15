#!/bin/bash -x

base=2
limit=256

powerValue=0
counter=0
while [ $powerValue -lt $limit ]
do
    powerValue=$(($base ** $counter))
    counter=$(($counter + 1))
done
