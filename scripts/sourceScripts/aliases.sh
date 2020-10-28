# Alias Config File

# My stuff (most people probably wont wont this)
# Music Production, Iphone emulator
alias piano='open ~/Documents/Music/Setup\ -\ Midi/test\ Project/123.als'
alias ios='open -a Simulator'
eval $(thefuck --alias)

# General shortcuts
alias copy='cp-improved'
alias remove='rm -rf'
alias move='mv -f'
alias send='ffsend upload'
alias zz='exit' 

# Updates all package managers at once
alias update='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; brew cask cleanup; brew prune; npm update -g npm; npm update -g; sudo gem update --system; gem update; gem cleanup; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; meteor update; sudo composer self-update; composer global update;'

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
alias tg='lazygit'

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
alias vrc='vi ~/.config/nvim/keys/which-key.vim ~/.config/nvim/general/settings.vim ~/.config/nvim/init.vim'

# Sourcing Info
alias sa='source ~/.profile && source ~/.zshrc spicetify -q apply'
alias qsa='source ~/.zshrc'

# Networking
alias networkScan='sudo fing -r 1 -d true -o table,text'
alias mypip='echo "Public IP: " && curl ipinfo.io/ip && echo "Default Gateway: " && route get default | grep gateway'

#Asthetic aliases
alias wall='cd ~/.wallpaper && sh ~/scripts/themeScripts/wallpapers.sh ./ `ls -d ~/.wallpaper/* | xargs -n 1 basename | fzf` && cd -'
alias nwall='cd ~/.wallpaper && sh ~/scripts//themeScripts/nordTheme.sh ./ `ls -d ~/.wallpaper/* | xargs -n 1 basename | fzf` && cd -'
alias gwall='cd ~/.wallpaper && sh ~/scripts/themeScripts/gruvTheme.sh ./ `ls -d ~/.wallpaper/* | xargs -n 1 basename | fzf` && cd -'
alias dwall='cd ~/.wallpaper && sh ~/scripts/themeScripts/dracTheme.sh ./ `ls -d ~/.wallpaper/* | xargs -n 1 basename | fzf` && cd -'
alias fwall='sh ~/scripts/wallpapers.sh ./ '
alias pybar='cd ~/Library/ApplicationSupport/Übersicht/widgets/simple-bar/lib/styles && ./pywal-gen.sh'
alias refreshbar='osascript -e "tell application id \"tracesOf.Uebersicht\" to refresh"'

# Python Scripts
alias sortdl='cd ~/scripts && python3 folder_manager.py ~/Downloads && cd'

# This is a private alias file for SSH (because I dont want to give anyone using my dots all my information :) 
source ~/.privateAliases.sh
