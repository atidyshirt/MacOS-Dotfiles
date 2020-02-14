#bin/bash
#install important packages and dependencies for config
#BREW
brew install pip3
brew install ranger
brew install neofetch
brew install neovim
brew install ffsend
brew install khanhas/tap/spicetify-cli
brew install sassc
brew tap homebrew/cask-fonts
brew cask install font-firacode-nerd-font 
brew install lazygit
brew install lazydocker
pip3 install pywal

#CURL install OHMYYZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#installing dots
mv Scripts $HOME/Scripts
mv .config $HOME/.config
mv bin $HOME/bin
mv spicetify_data $HOME/spicetify_data
mv .zshrc $HOME/.zshrc
mv .profile $HOME/.profile
mv wallpapers $HOME/Pictures
mkdir $HOME/Documents/Files
mkdir $HOME/Documents/Files/Bash
mkdir $HOME/Documents/Files/Java
mkdir $HOME/Documents/Files/Python
mkdir $HOME/Documents/Files/Temp
mkdir $HOME/Documents/Files/Univercity
mkdir $HOME/Documents/Files/Temp
mkdir $HOME/Documents/Files/Stenography

#setting up OHMYZSH
git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten
git clone https://github.com/GideonWolfe/vim.reaper.git
cd vim.reaper
sh update_config.sh

#setting up ubersicht
#Pecan
git clone https://github.com/zzzeyez/pecan.git "$HOME/Library/Application\ Support/Übersicht/widgets/pecan"
pecan-style --load medicine

#notifications
https://github.com/zzzeyez/xanthia.git "$HOME/Library/Application\ Support/Übersicht/widgets/xanthia"

#linking files after installing
ln -s "${HOME}/Library/Application\ Support/Übersicht/widgets/xanthia/notify-send" "/usr/local/bin/notify-send"
ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"
ln -s "${HOME}/Library/Application\ Support/Übersicht/widgets/pecan/pecan-style" "/usr/local/bin/pecan-style"

#telling the user
echo "Restart Iterm2 to take effect"
echo "open vim and type :PlugInstall"
echo "check file paths are present"
echo "check that spicetify applied"
echo "          Enjoy :)          "
