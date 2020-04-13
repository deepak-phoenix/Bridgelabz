#! /bin/bash -x

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
    i=`expr $i + 1`
done

# summation of random numbers
i=0
while [ $i -lt $range ]
do
    sum=$(($sum+${arrayName[$i]}))
    i=`expr $i + 1`
done

# displaying sum and average
echo "sum of all numebrs is $sum"
echo "Avg is $(($sum/5))"
