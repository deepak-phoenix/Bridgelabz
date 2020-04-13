#! /bin/bash -x

# reading lenght in ft
read -p "enter lenght in ft:" ft
# converting lenght to inches
inch=`echo "$ft*12" | bc`

# reading rectangle dimenstions in ft
echo "$ft feet is equal to $inch in."
read -p "length of rect in ft:" rectLenght
read -p "width of rect in ft:" rectWidth

# converting rectangle dimenstions to inches
lnin=`echo "$rectLenght*12" | bc`
wdin=`echo "$rectWidth*12" | bc`
# printing rectangle dimenstions in inches
echo "rect is $lnin X $wdin"

# calculating the area 25 such plots

area=`echo "$rectWidth*$rectLenght*25" | bc`
echo "Area of 25 such plots is $area"
