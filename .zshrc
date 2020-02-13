#most important changes visually
wal -R -q -n
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR

#test theme
ZSH_THEME="typewritten/typewritten"
# export TYPEWRITTEN_CURSOR="beam"
# path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# filesystem navigation
export APP="/Applications"
export DF="$HOME/dotfiles"

# Plugins to load
plugins=(vi-mode git golang history-substring-search)

# setup oh-my-zsh
source $ZSH/oh-my-zsh.sh

# private config
test -e "$HOME/.private.zsh" && source "$HOME/.private.zsh"

# iterm integration config
test -e "$HOME/.iterm2_shell_integration.zsh" && source "$HOME/.iterm2_shell_integration.zsh"

# vim editor
export TERM='xterm-256color'
export EDITOR='nvim'

alias firefox="open -a $APP/firefox.app"
alias spotify="open -a $APP/spotify.app"

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

##########################################################################################



#ALIASES

#GENERAL SHORTCUTS
alias cs='scripts && clear && cat sheet.txt'
alias vi='nvim'
alias svi='sudo nvim'
alias install='brew install'
alias brc='vi ~/.bashrc'
alias prc='vi ~/.profile'
alias zrc='vi ~/.zshrc'
alias vrc='vi ~/.config/nvim/configs/mappings.vim'
alias sa='source ~/.bashrc && source ~/.profile && source ~/.zshrc'
alias gc='git clone'
alias remove='rm -rf'
alias move='mv'
alias scripts='~/scripts'
alias py3='python3'
alias py='python'
alias files='cd /Users/jordy/Documents/Files'
alias root='cd / && clear'
alias config='open /Users/jordy/TerminalConfig.rtf'
alias Landscapes='cd ~/Pictures/wallpapers/Landscapes && ls'
#aias ffsend='send files to a URL for others to download'
alias send='ffsend upload'
alias fetch='echo "\n" && neofetch'  
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin
#networking
alias networkScan='sudo fing -r 1 -d true -o table,text'
alias mypip='curl ipinfo.io/ip'
#test
alias upload='sh ~/scripts/upload.sh'


#wall
alias wall='wal -q -b 13181b -i'
alias walll='wal -q -i'
alias wallL='wal -q -l -i'  
alias purpleT='wall ~/Pictures/wallpapers/Landscapes/NUtopia.jpg && spicetify config current_theme Lovelace && sa'
#setting wal aliases to change background quickly
alias wal1='wal -q -b 13181b -i ~/Pictures/CurrentWall/wallpaper.jpg && cd /Users/jordy/Library/Application\ Support/Übersicht/widgets/pecan && sh wal-set && clear'
alias wal3='wal -q -b 13181b -i ~/Pictures/CurrentWall/wallpaper3.jpg && cd /Users/jordy/Library/Application\ Support/Übersicht/widgets/pecan && sh wal-set && clear'
alias wal5='wal -q -b 13181b -i ~/Pictures/CurrentWall/wallpaper4.jpg && cd /Users/jordy/Library/Application\ Support/Übersicht/widgets/pecan && sh wal-set && clear'
alias wal2='wal -q -b 13181b -i ~/Pictures/wallpapers/Landscapes/skyship.jpg && cd /Users/jordy/Library/Application\ Support/Übersicht/widgets/pecan && sh wal-set && clear'
alias wal4='wal -q -b 13181b -i ~/Pictures//wallpapers/Landscapes/forest.png && cd /Users/jordy/Library/Application\ Support/Übersicht/widgets/pecan && sh wal-set && clear'


#spicetify aliases
alias spottheme='spicetify config current_theme'
alias spotapply='spicetify -q apply'
#preset themes like wal
alias spot1='spottheme bib && spotapply'
alias spot2='spottheme Lovelace && spotapply'
alias sn='sh ~/scripts/spotifynotif.sh &'

#python scripts
alias sten='python ~/Documents/Files/Python/hide.py'
alias sortdl='cd /Users/jordy/Documents/Files/Python && python3 folder_manager.py ~/Downloads && cd'

#links to external scripts pulled through
source ~/scripts/extractFunction.sh
source ~/scripts/fullpath.sh
source ~/scripts/backup.sh
source ~/scripts/currencyConvert.sh
source ~/scripts/notes.sh
