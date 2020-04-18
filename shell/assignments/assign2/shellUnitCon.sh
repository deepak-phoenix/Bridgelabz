#! /bin/bash -x
toMeter=2
toInch=1
toFeet=3

read -p "Enter lenght in the format x ft or x m or x in: " userInput
len=`echo $userInput | awk '{print $1}'`
unit=`echo $userInput | awk '{print $2}'`
echo "enter the option \n 1 -> convert to inch \n 2 -> convert to meter \n 3 -> convert to feet"
read convertionType
case $convertionType in
    $toInch)
        if [ $unit == "in" ]
        then
            echo "Its already in same unit"
        elif [ $unit == "ft" ]
        then
            convertedvalue=`echo "$len * 12" | bc`
        elif [ $unit == "m" ]
        then
            convertedvalue=`echo "$len / 39.37" | bc`
        fi
    ;;
    $toMeter)
        if [ $unit == "m" ]
        then
            echo "Its already in same unit"
        elif [ $unit == "in" ]
        then
            convertedvalue=`echo "$len * 39.37" | bc`
        elif [ $unit == "ft" ]
        then
            convertedvalue=`echo "$len * 3.281" | bc`
        fi
    ;;
    $toFeet)
        if [ $unit == "ft" ]
        then
            echo "Its already in same unit"
        elif [ $unit == "m" ]
        then
            convertedvalue=`echo "$len / 3.281" | bc`
        elif [ $unit == "in" ]
        then
            convertedvalue=`echo "$len / 3.281 / 39.37" | bc`
        fi
    ;;
esac
