# ZSH theme

# This is the typewritten theme
# fpath+=$HOME/.zsh/typewritten
# autoload -U promptinit; promptinit
# prompt typewritten

# On trial atm (seems a litle faster?)
ZSH_THEME="bira" 

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
ZSH_THEME_TERM_TITLE_IDLE="Terminal"

# Vim Keybindings for Shell
bindkey -v
bindkey 'jk' vi-cmd-mode
bindkey 'kj' vi-cmd-mode

# Allows for changing in quotes
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# Allows for changing in brackets
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

# PATH
export PATH="/Users/jordy/bin:$PATH"
export PATH="$PATH:/Users/jordy/Development/tools/flutter/bin"
export PATH="/Users/jordy/Library/Python/3.7/bin:$PATH"
export NODE_PATH='/usr/local/lib/node_modules'
export PATH="$PATH:/opt/yarn-[version]/bin"

# Setting Neovim as default editor
export EDITOR='nvim'

# sourcing keybinds for shell
for f in ~/scripts/sourceScripts/*; do
   source $f
done

