
#ALIASES
#GENERAL SHORTCUTS
alias ios='open -a Simulator'
alias cs='scripts && clear && cat sheet.txt'
alias vi='nvim'
alias svi='sudo nvim'
alias install='brew install'
alias arc='vi ~/scripts/sourceScripts/aliases.sh'
alias brc='vi ~/.bashrc'
alias prc='vi ~/.profile'
alias zrc='vi ~/.zshrc'
alias src='vi ~/.skhdrc'
alias yrc='vi ~/.config/yabai/yabairc'
alias vrc='vi ~/.config/nvim/configs/mappings.vim'
alias sa='source ~/.profile && source ~/.zshrc spicetify -q apply && sh ~/Library/Application\ Support/Übersicht/widgets/pecan/wal-set'
alias qsa='source ~/.zshrc'
alias gc='git clone'
alias remove='rm -rf'
alias move='mv'
alias scripts='~/scripts'
alias files='cd /Users/jordy/Documents/Files'
alias root='cd / && clear'
alias Landscapes='cd ~/Pictures/wallpapers/Landscapes && ls'
alias dotfiles='cd ~/Documents/Files/Bash/MacOS-Dotfiles'
alias send='ffsend upload'
alias fetch='echo "\n" && neofetch'  
alias networkScan='sudo fing -r 1 -d true -o table,text'
alias mypip='echo "Public IP: " && curl ipinfo.io/ip && echo "Default Gateway: " && route get default | grep gateway'


#Asthetic aliases
alias wall='wal -q -b 13181b -i'
alias walset='sh ~/scripts/wallpapers.sh'
alias walsetconstant='sh ~/scripts/wallpapers_consistant.sh'
glias randland='walsetconstant ~/Pictures/CurrentWall/landscapes'
alias sn='sh ~/scripts/spotifynotif.sh &'
#alias pecan-style -l developer/medicine


#python scripts
alias sortdl='cd ~/scripts && python3 folder_manager.py ~/Downloads && cd'
