export PATH="~/bin:$PATH"

#starts yabai
brew services restart skhd
brew services restart yabai

#Startup scripts
wal -R -q -n
