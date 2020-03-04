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
source ~/scripts/aliases.sh
source ~/scripts/extractFunction.sh
source ~/scripts/fullpath.sh
source ~/scripts/backup.sh
source ~/scripts/currencyConvert.sh
source ~/scripts/notes.sh
source ~/scripts/githubProjectDirectory.sh

