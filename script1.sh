#!/bin/bash

# script1 ---
# showing some basic system details (nothing fancy)---

echo "System Identity Report"
echo "----------------------"

# current user :-
u=$(whoami)
echo "User -> $u"

# kernel info :
k=$(uname -r)
echo "Kernel -> $k"

# uptime (how long system is running) :
upt=$(uptime -p)
echo "Uptime -> $upt"

# date and time :-
d=$(date)
echo "Time -> $d"

# distro name (taking from os-release)
# not sure if best way but works
dist=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
echo "OS -> $dist"

echo "----------------------"
echo "done"
