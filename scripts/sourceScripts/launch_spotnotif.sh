
b=$(ps aux | grep spotifynotif |grep -v grep | awk '{print $2}')
if [ -z "$b" ];
  then
    spotifynotif &
    bunnyfetch
  else
fi
