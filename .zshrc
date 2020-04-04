# 2gNZ9U1Dyyop-jc_VX8o
#Startup scripts
wal -R -q -n

#Setting Neovim as default editor
export EDITOR='nvim'

#ZSH theme
ZSH_THEME="typewritten/typewritten"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

#PATH
export PATH="/Users/jordy/.local/bin:$PATH"
export PATH="$PATH:/Users/jordy/Development/tools/flutter/bin"

#Sourcing scripts and aliases
for f in ~/scripts/sourceScripts/*; do
   source $f
done

