#PATH
export PATH="/Users/jordy/bin:$PATH"
export PATH="$PATH:/Users/jordy/Development/tools/flutter/bin"
export PATH="/Users/jordy/Library/Python/3.7/bin:$PATH"
export NODE_PATH='/usr/local/lib/node_modules'
export PATH="$PATH:/opt/yarn-[version]/bin"

#Startup scripts
wal -R -q -n

#Setting Neovim as default editor
export EDITOR='nvim'

#ZSH theme
ZSH_THEME="typewritten/typewritten"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


for f in ~/scripts/sourceScripts/*; do
   source $f
done

