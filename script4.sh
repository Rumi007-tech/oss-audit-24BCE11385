#!/bin/bash

# script4 log analyzer here.
# takes file and keyword and just count matching lines very basic one not very adv stuff

echo "---- Log Analyzer ----"

# getting inputs from here,
file=$1
key=$2

# default keyword if not given here.
if [ -z "$key" ]
then
    key="error"
fi

# check file exist or not , if condition used.
if [ ! -f "$file" ]
then
    echo "file not found bro check path"
    exit 1
fi

echo "using keyword: $key"

count=0

# reading file line by line for best understand.
# maybe slow for big file but ok for now , easier here.
while read line
do
    # checking match (no case considered just words).
    if echo "$line" | grep -iq "$key"
    then
        count=$((count+1))
    fi
done < "$file"

echo "total matches: $count"

echo "-----------------------"
echo "done"
