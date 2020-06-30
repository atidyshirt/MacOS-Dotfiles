
#ALIASES
#GENERAL SHORTCUTS
alias ios='open -a Simulator'
alias cs='scripts && clear && cat sheet.txt'
alias vi='nvim'
alias svi='sudo nvim'
alias install='brew install'
alias arc='vi ~/scripts/sourceScripts/aliases.sh'
alias trc='vi ~/.config/alacritty/alacritty.yml'
alias brc='vi ~/.bashrc'
alias prc='vi ~/.profile'
alias zrc='vi ~/.zshrc'
alias src='vi ~/.skhdrc'
alias yrc='vi ~/.config/yabai/yabairc'
alias vrc='vi ~/.config/nvim/configs/mappings.vim'
alias sa='source ~/.profile && source ~/.zshrc spicetify -q apply && sh ~/Library/Application\ Support/Übersicht/widgets/pecan/wal-set'
alias qsa='source ~/.zshrc'
alias gc='git clone'
alias toc='gh-md-toc'
alias remove='rm -rf'
alias move='mv -f'
alias scripts='~/scripts'
alias files='cd /Users/jordy/Documents/Files'
alias root='cd / && clear'
alias Landscapes='cd ~/Pictures/wallpapers/Landscapes && ls'
alias dotfiles='cd ~/Documents/Files/Bash/MacOS-Dotfiles'
alias send='ffsend upload'
alias fetch='echo "\n" && neofetch'  
alias networkScan='sudo fing -r 1 -d true -o table,text'
alias mypip='echo "Public IP: " && curl ipinfo.io/ip && echo "Default Gateway: " && route get default | grep gateway'
alias enote='vi ~/scripts/quicknote.txt'
alias piano='open /Users/jordy/Documents/Music/Setup\ -\ Midi/test\ Project/123.als'
alias iina='/Applications/IINA.app/Contents/MacOS/IINA'
alias batterytest='top -stats pid,command,cpu,idlew,power -o power -d'



#Asthetic aliases
alias wall='wal -q -i'
alias walset='sh ~/scripts/wallpapers.sh'

#python scripts
#This sets python to install directly into python3 not 2.7
alias pipi='python3 -m pip'
alias sortdl='cd /Users/jordy/scripts && python3 folder_manager.py ~/Downloads && cd'
