#!/bin/bash -x
flag=0

read -p "Enter a number > 0 to check its prime or not: " number

for ((counter=2; counter <= $number; counter++))
do
    if [ $(($number % $counter)) == 0 ]
    then
        flag=$(($flag + 1))
    fi
done
# echo $flag

if [ $number == 1 ]
then
    echo "1 is not prime"
elif [ $flag -lt 2 ]
then
    echo "$number is prime"
else
    echo "$number is not prime"
fi
