#bin/bash

#NOTE: Huge thanks to all the authors of these lovely plugins, apps ect
#      makes my life easy :)

echo "We will need your password to change shell to zsh"
chsh -s /bin/zsh

#installing homebrew from Curl

#install important packages and dependencies for config
#BREW
brew install pip3
brew install ranger
brew install neofetch
brew install nvim
brew install ffsend
brew install khanhas/tap/spicetify-cli
brew install sassc
brew tap homebrew/cask-fonts
brew cask install font-firacode-nerd-font 

#PIP
pip3 install pywal

#CURL install OHMYYZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#installing default directories and dots
mv Files ~/Documents/Files
mv scripts ~/scripts
mv .config ~/.config
mv bin ~/bin
mv spicetify_data ~/spicetify_data

#setting up OHMYZSH
git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten
ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"

#setting up ubersicht
#Pecan
git clone https://github.com/zzzeyez/pecan.git "$HOME/Library/Application\ Support/Übersicht/widgets/pecan"
ln -s "${HOME}/Library/Application\ Support/Übersicht/widgets/pecan/pecan-style" "/usr/local/bin/pecan-style"
pecan-style --load medicine

#notifications
https://github.com/zzzeyez/xanthia.git "$HOME/Library/Application\ Support/Übersicht    /widgets/xanthia"
ln -s "${HOME}/Library/Application\ Support/Übersicht/widgets/xanthia/notify-send" "/usr/local/bin/notify-send"

source ~/.zshrc
source ~/.profile
