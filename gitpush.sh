#!/bin/bash
#
#shell script to push a file to git
#
# script by Naseem
#
#

if [ -f $1 ];
then
git add $1
if [ -n "$2" ];
    then
        git commit -m $2
        git push mygithub
    else
        echo "Error: Please write a comment to commit file"
    fi
else
    echo "Error: File does not exist"
fi

