#! /bin/bash -x

read -p "Enter a number:" a
read -p "Enter another number:" b


sum=$(($a + $b))
diff=$(($a - $b))
mul=$(($a * $b))
div=$(($a / $b))
echo "sum $sum; difference $diff; multiplication $mul; division $div;"
