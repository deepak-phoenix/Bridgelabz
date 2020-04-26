#! /bin/bash -x

read -p "Enter a year:" year

validYearCheck=`echo "$year/1000" | bc`
if (($validYearCheck >= 1 & $validYearCheck <10 ))
then
    dividebyFour=$(($year % 4))
    dividebyHun=$(($year % 100))
    dividebyFourHun=$(($year % 400))
    if (($dividebyFour==0 & $dividebyHun!=0))
    then
        echo "$year is a leap year!"
    elif (($dividebyFourHun==0 & $dividebyHun==0))
    then
        echo "$year is a leap year!"
    else
        echo "$year is not a leap year"
    fi
else
    echo "Enter 4 digit number"
fi
