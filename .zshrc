# ZSH theme
ZSH_THEME="bira"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Vim Keybindings for Shell
bindkey -v
bindkey 'jk' vi-cmd-mode
bindkey 'kj' vi-cmd-mode

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
      [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'

  elif [[ ${KEYMAP} == main ]] ||
        [[ ${KEYMAP} == viins ]] ||
        [[ ${KEYMAP} = '' ]] ||
        [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
    echo -ne '\e[5 q'
}

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
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/Users/jordy/Development/tools/flutter/bin"
export NODE_PATH='/usr/local/lib/node_modules'
export PATH="$PATH:/opt/yarn-[version]/bin"
export PATH="$PATH:/usr/local/bin/"
export PATH="/usr/local/share/python@3.8:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/libexec/bin:$PATH"
export PATH="/usr/local/lib/python@3.8/site-packages:$PATH"
export PATH="/Users/jordy/,local/bin:$PATH"
export PYTHONPATH="/usr/local/opt/python@3.8/libexec/bin:$PYTHONPATH"
export PYTHONPATH="/usr/local/lib/python@3.8/site-packages:$PYTHONPATH"


# Setting Neovim as default editor
export EDITOR='nvim'

# sourcing keybinds for shell
for f in ~/scripts/sourceScripts/*; do
   source $f
done

# Running tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec env tmux
fi

export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
