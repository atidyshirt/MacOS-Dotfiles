
b=$(ps aux | grep Iterm2 |grep -v grep | awk '{print $2}')
if [ -z "$b" ];
  then
    bunnyfetch
  else
fi
