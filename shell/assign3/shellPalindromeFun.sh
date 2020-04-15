#!/bin/bash -x


Palindrome() {
    number=$1
    reverseNumber=0
    while [ $number -gt 0 ]
    do
        value=$(($number % 10))
        reverseNumber=$((($reverseNumber * 10) + $value))
        number=$(($number / 10))
        echo $value
    done
    if [ $number == $reverseNumber ]
    then
        echo "It's a Palindrome"
    else
        echo "It's not a Palindrome"
    fi
}

read -p "Enter a number: " number
Palindrome $number
