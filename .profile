export PATH="~/bin:$PATH"

#starts yabai
brew services restart skhd
brew services restart yabai

#Startup scripts
wal -R -q -n
python3 ~/scripts/sorter.py &

alias tmuxfix='tmux set-option -ga terminal-overrides ",*256col*:Tc" && exit'
