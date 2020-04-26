#! /bin/bash -x

dice=0

read -p "Enter number of dice roll: " numOfRolls
i=0
while [ $i -lt $numOfRolls ]
do
    dice=$(($RANDOM % 6 + 1))
    i=`expr $i + 1`
done
