# Alias Config File

# My stuff (most people probably wont wont this)
# Music Production, Iphone emulator
alias piano='open ~/Documents/Music/Setup\ -\ Midi/test\ Project/123.als'
alias ios='open -a Simulator'
alias vmd='markserv'
eval $(thefuck --alias)

# General shortcuts
alias copy='cp-improved'
alias remove='rm -rf'
alias move='mv -f'
alias send='ffsend upload'
alias zz='exit' 

# Location / Navigation
alias root='cd / && clear'
alias files='cd ~/Documents/Files'
alias uni='cd ~/Documents/Files/University'
alias scripts='~/scripts'
alias dotfiles='cd ~/Documents/Files/Bash/MacOS-Dotfiles'
alias bar='cd ~/library/ApplicationSupport/Übersicht/widgets && ls'

## `cd` changes
alias ..='cd ..'
alias ...='cd ../..'

# Neovim + Coding
alias vi='nvim'
alias svi='sudo nvim'
alias lg='lazygit'

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
alias yrc='vi ~/.yabairc'
alias vrc='vi ~/.config/nvim/configs/mappings.vim'

# Sourcing Info
alias sa='source ~/.profile && source ~/.zshrc spicetify -q apply'
alias qsa='source ~/.zshrc'

# Music
alias lofi='mpv --no-video "https://www.youtube.com/watch?v=tKMmMHyLBCE&list=PLLdleXd4xjowk41Umvu46QEu9oboRw1lp"'

# Networking
alias networkScan='sudo fing -r 1 -d true -o table,text'
alias mypip='echo "Public IP: " && curl ipinfo.io/ip && echo "Default Gateway: " && route get default | grep gateway'

#Asthetic aliases
alias wall='cd ~/.wallpaper && sh ~/scripts/wallpapers.sh ./ `ls -d ~/.wallpaper/* | xargs -n 1 basename | fzf` && cd -'
alias nwall='cd ~/.wallpaper && sh ~/scripts/nordTheme.sh ./ `ls -d ~/.wallpaper/* | xargs -n 1 basename | fzf` && cd -'
alias gwall='cd ~/.wallpaper && sh ~/scripts/gruvTheme.sh ./ `ls -d ~/.wallpaper/* | xargs -n 1 basename | fzf` && cd -'
alias fwall='sh ~/scripts/wallpapers.sh ./ '
alias pybar='cd ~/Library/ApplicationSupport/Übersicht/widgets/simple-bar/lib/styles && ./pywal-gen.sh'
alias refreshbar='osascript -e "tell application id \"tracesOf.Uebersicht\" to refresh"'

# Python Scripts
alias sortdl='cd ~/scripts && python3 folder_manager.py ~/Downloads && cd'

# This is a private alias file for SSH (because I dont want to give anyone using my dots all my information :) 
source ~/.privateAliases.sh
