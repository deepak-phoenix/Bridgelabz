#!/bin/bash -x

declare -a numbers

read -p "Enter number of nos. you want to test: " range

echo "Enter number one by one"

for ((counter=0; counter < $range; counter ++))
do
    read numbers[$counter]
done

for ((counter=0; counter < $range; counter ++))
do
    flag=0
    iteam=${numbers[$counter]}
    for ((innerCounter=2; innerCounter <= $iteam; innerCounter++))
    do
        if [ $(($iteam % $innerCounter)) == 0 ]
        then
            flag=$(($flag + 1))
        fi
    done
    # echo $flag
    if [ $iteam == 1 ]
    then
        echo "1 is not prime"
    elif [ $flag -lt 2 ]
    then
        echo "$iteam is prime"
    else
        echo "$iteam is not prime"
    fi
done
