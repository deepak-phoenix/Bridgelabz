#! /bin/bash -x
echo "printing name and base pay who has base pay > 10000"
awk '$4 >= 10000 {print $2 " -> "$4}' data.csv
echo "printing name and toal pay who has base pay > 10000"
awk '$4 >= 10000 {print $2 " -> "$NF}' data.csv
echo "Avg of salary capatain"
grep -i captain data.csv | awk '{sum+= $NF} END {print "AVG->" sum/NR}'
echo "printing names and overtime pay who has overtime pay between 7000 & 10000"
awk '$5 >= 7000 && $5 <= 10000 {print $2 "-->" $5}' data.csv
echo "Avg base pay"
awk '{sum+=$4} END {print "Avg->" sum/NR}' data.csv
