#!/bin/bash

cmusRunning=$(echo "$(ps aux | grep -o "cmus$")")

case $cmusRunning in
  "cmus")
    playStatus=$(echo "$(/usr/local/bin/cmus-remote -Q | grep status | awk '{print $2}')")
    if [ $playStatus == "playing" ];
    then
      song=$(/usr/local/bin/cmus-remote -Q | grep "tag title" | sed s/"tag title"/""/g |  sed '1s/^.//')
      artist=$(/usr/local/bin/cmus-remote -Q | grep "tag artist" | sed s/"tag artist"/""/g)
      echo $artist - $song
    else
      echo $(osascript -e 'tell application "System Events"set processList to (name of every process)end tellif (processList contains "Spotify") is true thentell application "Spotify"if player state is playing thenset artistName to artist of current trackset trackName to name of current trackreturn artistName & " - " & trackNameelsereturn ""end ifend tellend if')
    fi
    ;;
  *)
     echo $(osascript -e 'tell application "System Events"set processList to (name of every process)end tellif (processList contains "Spotify") is true thentell application "Spotify"if player state is playing thenset artistName to artist of current trackset trackName to name of current trackreturn artistName & " - " & trackNameelsereturn ""end ifend tellend if')
    ;;
esac
