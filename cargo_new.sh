#!/bin/bash

printf "Enter a name for your project: "
read NAME
printf "Would you like to keep a version history for that project? [y/n]: "
read INPUT_VCS

if [ $INPUT_VCS = "y" ] || [ $INPUT_VCS = "Y" ]; then
    cargo new ${NAME}
elif [ $INPUT_VCS = "n" ] || [ $INPUT_VCS = "N" ]; then
    cargo new ${NAME} --vcs none
else
    echo "Invalid input"
fi
