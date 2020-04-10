#! /bin/zsh -x

for file in `find ../../ -type f -mtime +3`
do
    if test -d "backup"
    then

    else
        mkdir backup
    fi
    cp "$file" backup
done
