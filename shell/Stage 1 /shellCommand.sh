#! /bin/zsh -x

hellocmd=`hello`
if [ -z "$hellocmd" ]
then
    echo "hello: cmd Failure"
else
    echo "hello: cmd Sucess"
fi
lscmd=`ls`
if [ -z "$lscmd" ]
then
    echo "ls: cmd Failure"
else
    echo "ls: cmd Sucess"
fi

echo "number of times chrome is present in the access logs"
grep -i chrome access.log | wc -l

echo "Creating a list of prcoess running with cpu memory useage"
top | awk '{print $1 " -> " $12" -> " $2" -> " $3" -> " $8" -> " $15}'
