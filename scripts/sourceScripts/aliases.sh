# Alias Config File

# My stuff (most people probably wont wont this)
# Music Production, Iphone emulator
alias piano='open /Users/jordy/Documents/Music/Setup\ -\ Midi/test\ Project/123.als'
alias ios='open -a Simulator'

# General shortcuts
alias copy='cp-improved'
alias remove='rm -rf'
alias move='mv -f'
alias send='ffsend upload'

# Location / Navigation
alias root='cd / && clear'
alias files='cd /Users/jordy/Documents/Files'
alias scripts='~/scripts'
alias dotfiles='cd ~/Documents/Files/Bash/MacOS-Dotfiles'

# Neovim + Coding
alias vi='nvim'
alias svi='sudo nvim'
alias toc='gh-md-toc'

# Package Management
alias gc='git clone'
alias pipi='python3 -m pip' # makes sure path doesnt get fucked on Mac when installing with pip

# Config Files
alias arc='vi ~/scripts/sourceScripts/aliases.sh'
alias trc='vi ~/.config/alacritty/alacritty.yml'
alias brc='vi ~/.bashrc'
alias prc='vi ~/.profile'
alias zrc='vi ~/.zshrc'
alias src='vi ~/.skhdrc'
alias yrc='vi ~/.config/yabai/yabairc'
alias vrc='vi ~/.config/nvim/configs/mappings.vim'

# Sourcing Info
alias sa='source ~/.profile && source ~/.zshrc spicetify -q apply'
alias qsa='source ~/.zshrc'

# Networking
alias networkScan='sudo fing -r 1 -d true -o table,text'
alias mypip='echo "Public IP: " && curl ipinfo.io/ip && echo "Default Gateway: " && route get default | grep gateway'

#Asthetic aliases
alias wall='sh ~/scripts/wallpapers.sh ./'
alias refreshbar='osascript -e "tell application id \"tracesOf.Uebersicht\" to refresh"'

# Python Scripts
alias sortdl='cd /Users/jordy/scripts && python3 folder_manager.py ~/Downloads && cd'
