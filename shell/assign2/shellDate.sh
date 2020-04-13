#! /bin/bash -x

echo "please enter valid date"
read -p "Enter month in MM format: " month
read -p "Enter day in DD format: " date

if (($month >= 03 & $date >= 20))
then
    if (($month <= 4 & $date >= 20))
    then
        echo "True"
    else
        echo "False"
    fi
else
    echo "False"
fi
