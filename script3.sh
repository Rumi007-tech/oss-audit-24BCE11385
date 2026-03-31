#!/bin/bash

# script3 disk and the permission check -----
# looping some folders and checking basic stuff not too much only simple

echo "Disk and Permission Auditor"
echo "---------------------------"

# list of dirs , basic.
dirs="/etc /home /var /tmp"

# loop through each dir
for d in $dirs
do
    echo ""
    echo "checking -> $d"

    # check if exists or not
    if [ -d "$d" ]
    then
        echo "found this dir"

        # permissions
        p=$(ls -ld $d)
        echo "perm: $p"

        # size
        s=$(du -sh $d 2>/dev/null)
        echo "size: $s"

    else
        echo "not present maybe removed?"
    fi

done

echo ""
echo "---------------------------"

# checking 777 files , mostly not safe one here 
echo "looking for 777 permission files"

bad=$(find / -type f -perm 0777 2>/dev/null)

if [ -z "$bad" ]
then
    echo "no risky files found (good)"
else
    echo "these files have 777:"
    echo "$bad"
fi

echo "---------------------------"
echo "done"
