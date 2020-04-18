#! /bin/bash -x

startMonth=3
endMonth=6
startDay=20
endDay=20


read -p "Enter month in MM format: " month
read -p "Enter day in DD format: " date
if (( $month > 12 || $date > 31 ))
then
    echo "Wrong date"
else
    if (($month >= $startMonth & $month <= $endMonth))
    then
        if (($month == $startMonth))
        then
            if (($date >= $startDay))
            then
                echo "True"
            else
                echo "False"
            fi
        elif (($month == $endMonth))
        then
            if (($date <= $endDay))
            then
                echo "True"
            else
                echo "False"
            fi
        else
            echo "True"
        fi
    else
        echo "False"
    fi
fi
