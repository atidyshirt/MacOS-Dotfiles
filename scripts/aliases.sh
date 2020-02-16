#ALIASES

#GENERAL SHORTCUTS
alias firefox="open -a $APP/firefox.app"
alias spotify="open -a $APP/spotify.app"
alias amythest='open -a $APP/amythest'
alias ios='open -a Simulator'
alias cs='scripts && clear && cat sheet.txt'
alias vi='nvim'
alias svi='sudo nvim'
alias install='brew install'
alias arc='vi ~/scripts/aliases.sh'
alias brc='vi ~/.bashrc'
alias prc='vi ~/.profile'
alias zrc='vi ~/.zshrc'
alias vrc='vi ~/.config/nvim/configs/mappings.vim'
alias sa='source ~/.profile && source ~/.zshrc spicetify -q apply && sh ~/Library/Application\ Support/Übersicht/widgets/pecan/wal-set'
alias gc='git clone'
alias remove='rm -rf'
alias move='mv'
alias scripts='~/scripts'
alias files='cd /Users/jordy/Documents/Files'
alias root='cd / && clear'
alias config='open /Users/jordy/TerminalConfig.rtf'
alias Landscapes='cd ~/Pictures/wallpapers/Landscapes && ls'
alias dotfiles='cd ~/scripts/MacOS-Dotfiles'
alias send='ffsend upload'
alias upload='sh ~/scripts/upload.sh'
alias fetch='echo "\n" && neofetch'  
alias networkScan='sudo fing -r 1 -d true -o table,text'
alias mypip='curl ipinfo.io/ip'


#Pywal aliases
alias wall='wal -q -b 13181b -i'

#spotify aliases
alias spottheme='spicetify config current_theme'
alias sn='sh ~/scripts/spotifynotif.sh &'

#python scripts
alias sten='python ~/Documents/Files/Python/hide.py'
alias sortdl='cd /Users/jordy/Documents/Files/Python && python3 folder_manager.py ~/Downloads && cd'
