#! /bin/bash -x
read -p "Enter a year:" year
check=`echo "$year/1000" | bc`
if (($check >= 1 & $check <10 ))
then
    byF=$(($year % 4))
    byH=$(($year % 100))
    byFH=$(($year % 400))
    if (($byF==0 & $byH!=0))
    then
        echo "$year is a leap year!"
    elif (($byFH==0 & $byH==0))
    then
        echo "$year is a leap year!"
    else
        echo "$year is not a leap year"
    fi
else
    echo "Enter 4 digit number"
fi
