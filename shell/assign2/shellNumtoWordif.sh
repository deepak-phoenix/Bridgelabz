#! /bin/bash -x

numStart=0
numEnd=10
read -p "Enter a single digit positive integer:" number

if (($number >= $numStart & $number <= $numEnd))
then
    if (($number == 0))
    then
        echo "Zero"
    elif (($number == 1))
    then
        echo "One"
    elif (($number == 2))
    then
        echo "Two"
    elif (($number == 3))
    then
        echo "Three"
    elif (($number == 4))
    then
        echo "Four"
    elif (($number == 5))
    then
        echo "Five"
    elif (($number == 6))
    then
        echo "Six"
    elif (($number == 7))
    then
        echo "Seven"
    elif (($number == 8))
    then
        echo "Eight"
    elif (($number == 9))
    then
        echo "Nine"
    elif (($number == 10))
    then
        echo "Ten"
    fi
else
    echo "Not in the range"
fi
