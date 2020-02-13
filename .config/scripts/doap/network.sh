#!/bin/bash

# repeatedly print out network stuff

source ./utils.sh

while True; do

    gtimeout 2 netstat -l

    printf "\n ${b1}exploring net ...${cno} \n\n"
    sleep 1

    IP="$(triplet).$(triplet).$(triplet).$(triplet)"
    ping -c5 localhost | sed -e "s|127\.0\.0\.1|$IP|" -e "s|$(hostname)||"

    printf "\n ${b4}checking host ...${cno} \n\n"
    sleep 1
done
