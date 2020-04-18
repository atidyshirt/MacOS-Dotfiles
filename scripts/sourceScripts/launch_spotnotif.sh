
b=$(ps aux | grep spotifynotif |grep -v grep | awk '{print $2}')
if [ -z "$b" ];
  then
    nohup spotifynotif &
    sortdl
    clear
    bunnyfetch
  else
fi
