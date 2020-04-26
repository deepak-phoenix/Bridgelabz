#! /bin/bash -x

read -p "Enter a positive integer: " number
echo "Unit value are displayed from lowest to higest i.e. unit,tens,hunderd"
while [ $number -gt 0 ]
do
    value=$(($number % 10))
    number=$(($number / 10))
    echo $value
done
