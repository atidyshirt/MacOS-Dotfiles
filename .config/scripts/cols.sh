#!/bin/bash

[ -r ~/.cache/wal/colors.sh ] && source ~/.cache/wal/colors.sh

xblk=$color0
xgry=$color8
xred=$color1
xgrn=$color2
xblu=$color4
xwht=$color7

# Background
bwht="\e[40m"
bgry="\e[100m"
bred="\e[41m"
bgrn="\e[42m"
bblu="\e[44m"
bblk="\e[47m"

# Foreground
fwht="\e[37m"
fgry="\e[90m"
fred="\e[31m"
fgrn="\e[32m"
fblu="\e[34m"
fblk="\e[30m"

printf "\n"
printf "         ${bgry}         ${bred}         ${bgrn}         ${bblu}         ${bblk}         ${bwht}\n"
printf "         ${bgry}         ${bred}         ${bgrn}         ${bblu}         ${bblk}         ${bwht}\n"
printf "         ${bgry}         ${bred}         ${bgrn}         ${bblu}         ${bblk}         ${bwht}\n"
printf "         ${bgry}         ${bred}         ${bgrn}         ${bblu}         ${bblk}         ${bwht}\n"
printf " ${xblk}  ${fgry}${xgry}  ${fred}${xred}  ${fgrn}${xgrn}  ${fblu}${xblu}  ${fwht}${xwht}\n"
printf "\n"
