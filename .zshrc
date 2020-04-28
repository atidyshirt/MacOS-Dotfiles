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
export PYTHONPATH=/usr/local/lib/python2.7:$PYTHONPATH
export PYTHONPATH=/usr/local/lib/python3.7:$PYTHONPATH
export PYTHONPATH=/usr/local/lib/python3.8:$PYTHONPATH


for f in ~/scripts/sourceScripts/*; do
   source $f
done

