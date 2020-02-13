#!/bin/bash
# Tiny colored fetch script
# Requires Typicons Font to display the icons
# elenapan @ github | modified @truency

f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
d=$'\e[1m'
t=$'\e[0m'
v=$'\e[7m'

# Items
sep=
s=$d$f0$sep$t

w=
wifiname="$(iwgetid | cut -d \" -f2)"

h=
wmname="$(echo $XDG_CURRENT_DESKTOP | tr '[:upper:]' '[:lower:]')"

k=
kernel="$(uname -mr | cut -d '-' -f1)"
os="$(lsb_release -ds | sed -e 's/^"//' -e 's/"$//' | tr '[:upper:]' '[:lower:]')"

r=
resolution="$(xdpyinfo  | grep -oP 'dimensions:\s+\K\S+')"

sh=
shell=$(basename $SHELL)

# (\ /)
# ( · ·)
# c(")(")

# (\ /)
# ( . .)
# c(")(")

tput clear
cat << EOF
             $d$f1$h  $t$wmname - $t$os
   (\ /)     $f3$k  $t$kernel
   ( $d. .$t)    $f2$sh  $t$shell
   c($f1"$t)($f1"$t)   $f5$r  $t$resolution
             $f4$w  $t$wifiname
EOF
