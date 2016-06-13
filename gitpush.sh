#!/bin/bash
#
#shell script to push a file to git
#
# script by Naseem
#
#
RED='\033[0;31m'
NC='\033[0m'
# adding file if exists
if [ -f $1 ];
then
git add $1
echo "File added"
# committing file 
if [ -n "$2" ];
    then
        git commit -m $2
# pushing file to github by autoauthenticating
        git push mygithub
    else
        echo -e "${RED}Error: Please write a comment to commit file${NC}"
    fi
else
    echo -e "${RED}Error: File does not exist${NC}"
fi

