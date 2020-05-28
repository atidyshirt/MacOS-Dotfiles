#Startup scripts
wal -R -q -n

#Setting Neovim as default editor
export EDITOR='nvim'

#ZSH theme
ZSH_THEME="typewritten/typewritten"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

#PATH
export PATH="/Users/jordy/bin:$PATH"
export PATH="$PATH:/Users/jordy/Development/tools/flutter/bin"
export PYTHONPATH="/User/jordy/library/python/3.7/lib/python/site-packages:$PYTHONPATH"

for f in ~/scripts/sourceScripts/*; do
   source $f
done

bunnyfetch
