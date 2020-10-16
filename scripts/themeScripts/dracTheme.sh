#!/bin/bash

alias pybar='cd ~/Library/ApplicationSupport/Übersicht/widgets/simple-bar/lib/styles && ./pywal-gen.sh'
#find random wallpaper from ~/wallpapers and set it as wallpaper using pywal
if [ -z "$1" ]
then
    echo "usage: $0 [path/to/images] [image_name (if none choose random)]"
    exit 1
else
    if [ -z "$2" ]
    then
         ls $1 |sort -R |tail -1 |while read file; do
            wal -q -b 282a36 -i $1/$file
        done
    else
        wal -q -b 282a36 -i $1/$2
    fi
fi

sh ~/bin/script.sh ~/.config/alacritty/alacritty.yml

echo "source $HOME/.config/nvim/themes/dracula.vim" > $HOME/.config/nvim/themes/theme.vim

pywal-discord -t abou

xrdb -merge ~/.Xresources

pybar

spicetify -q update

alacritty-themes

brew services restart yabai
