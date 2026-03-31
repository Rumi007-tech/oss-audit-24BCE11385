#!/bin/bash

# script2 - python package checking -------
# just checking if python is there or not-------------

echo "---- Python Package Inspector ----"

# checking python3 , of course language 
p=$(which python3)

if [ -z "$p" ]
then
    echo "hmm python3 not found on this system"
else
    echo "ok python3 is installed"

    # version of this program ------
    v=$(python3 --version)
    echo "Version -> $v"

    # license info of software -----
    echo "License -> PSF (open source, free to use)"
fi

echo "----------------------------------"

# asking for package name ----
read -p "enter some package name (python / pip / bash): " name

# using case ---
case $name in

    python)
        echo "python -> programming language, used for many things like scripting, AI etc"
        ;;

    pip)
        echo "pip -> tool to install python packages"
        ;;

    bash)
        echo "bash -> command line shell, what we are using right now"
        ;;

    *)
        echo "not sure about this one, maybe try python/pip/bash"
        ;;

esac

echo "----------------------------------"
echo "done"
