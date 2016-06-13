#!/bin/bash
#
#shell script to push a file to git
#
# script by Naseem
#
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
#
# adding file if exists
if [ -f $1 ];
then
git add $1
echo -e "${GREEN}File added sucessfully${NC}"
#
# committing file 
if [ -n "$2" ];
    then
        git commit -m "$2"
#
# pushing file to github by autoauthenticating
echo -e "${GREEN}Pushing the file to repository${NC}"    
    git push mygithub
    else
        echo -e "${RED}Error: Please write a comment to commit file${NC}"
    fi
# 
else
    echo -e "${RED}Error: File does not exist${NC}"
fi

