#!/Users/deepakpatel/Dev/bin/bash5 -x

read -p "enter a first part of e-mail: " userInput

# pat="^[0-9]{3} ? [0-9]{3}"
pat="^[a-z A-Z 0-9]$"
if [[ $userInput =~ $pat ]];
then
    echo "true"
else
    echo "false"
fi
