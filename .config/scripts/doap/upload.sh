#!/bin/bash

# pretend we're uploading

source ./utils.sh

bar="▉"

clear
printf "${b5}Uploading virus ... ${cno}\n"

while True; do

    for i in 1 2 3 4 5 6 7 8 9; do
        printf "${b2}$bar${cno}"
        sleep 1
    done

    printf "\b\b\b\b\b\b\b\b\b\b"
    printf "          "
    printf "\b\b\b\b\b\b\b\b\b\b"
    sleep 1

done
