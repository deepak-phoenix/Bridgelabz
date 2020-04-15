#!/bin/bash -x

toF(){
    degC=$1
    degF=`echo "$degC * 1.8 + 32" | bc -l`
    echo "Degree in Fahrenheit $degF F"
}

toC(){
    degF=$1
    degC=`echo "($degF - 32) * (5/9)" | bc -l`
    echo "Degree in Celsius $degC C"
}

read -p "Enter the temperature in the format x C or x F: " deg
value=`echo $deg | awk -F " " '{print $1}'`
unit=`echo $deg | awk -F " " '{print $2}'`
case $unit in
    "C" )
        # echo "C"
        if (( $value < 0 || $value > 100 ))
        then
            echo "Invalid data"
            exit
        else
            toF $value
        fi
    ;;
    "F" )
        # echo "F"
        if (( $value < 32 || $value > 212 ))
        then
            echo "Invalid data"
            exit
        else
            toC $value
        fi
    ;;
esac
