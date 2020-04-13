range=5
i=0
sum=0
# declaring a array
declare -a arrayName

# generating random numbers
while [ $i -lt $range ]
do
    num=$RANDOM
    arrayName[$i]=$(($num%99))
    echo ${arrayName[$i]}
    i=`expr $i + 1`
done

#Finding largets of numbers
big=0
i=0
while [ $i -lt $range ]
do
    if [ $big -lt ${arrayName[$i]} ]
    then
        big=${arrayName[$i]}
    fi
    i=`expr $i + 1`
done

small=100
i=0
while [ $i -lt $range ]
do
    if [ $small -gt ${arrayName[$i]} ]
    then
        small=${arrayName[$i]}
    fi
    i=`expr $i + 1`
done

# displaying sum and average
echo "smallest is $small"
echo "largest is $big"
