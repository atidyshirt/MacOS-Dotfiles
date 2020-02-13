#!/bin/bash

# pretend we're encrypting stuff with a block of 10 random hexdump lines

source ./utils.sh

clear
printf "${b1} encrypting ... ${cno}\n"

while True; do

    out="$(cat /dev/urandom|hexdump|head -n10|cut -f2- -d ' ')"
    echo "$out"

    sleep 1

    echo -e "\033[11A\r"

done
