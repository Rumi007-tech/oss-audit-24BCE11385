#!/bin/bash

# script5 open source manifesto , final one sh5 final,
# just taking some input and writing to file nothing fancy, easiest here.

echo "---- Open Source Manifesto ----"

# asking user  for input deatils----
read -p "your name: " n
read -p "what open source means to you (one line): " m
read -p "one tool you like: " t

# date (today extract from sys)
dt=$(date)

# file name
f="manifesto.txt"

# writing to file (baisc here).
echo "Open Source Manifesto" > $f
echo "----------------------" >> $f

# small para using input (not perfect sentence but alright used):
line="$n believes that open source means $m. They often use $t and think sharing code is good for learning and growth."

echo "$line" >> $f
echo "" >> $f
echo "created on: $dt" >> $f

# show result (final thing):
echo "file created -> $f"
echo "----------------------"
cat $f
