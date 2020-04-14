#! /bin/bash -x

numStart=0
numEnd=10
read -p "Enter a single digit positive integer:" number

if (($number >= $numStart & $number <= $numEnd))
then
    case $number in
        "0")
            echo "Zero";;
        "1")
            echo "One";;
        "2")
            echo "Two";;
        "3")
            echo "Three";;
        "4")
            echo "Four";;
        "5")
            echo "Five";;
        "6")
            echo "Six";;
        "7")
            echo "Seven";;
        "8")
            echo "Eight";;
        "9")
            echo "Nine";;
        "10")
            echo "Ten";;
    esac
else
    echo "Not in the range"
fi
