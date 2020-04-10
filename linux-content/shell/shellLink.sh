#! /bin/zsh -x

echo "To find 4 most visited sites "
cat access.log | awk '{print $11}' | sort | uniq -c | sort | tail -4
echo "4 most visited sites with time stamp"
cat access.log | awk '{print $11 " -> "$4}' | sort | uniq -c | sort | tail -4
echo "4 most appeared http code with time stamp"
cat access.log | awk '{print $9 " -> "$4}' | sort | uniq -c | sort | tail -4
echo "10 most appeared ip address with count"
cat access.log | awk '{print $1}' | sort | uniq -c | sort | tail
