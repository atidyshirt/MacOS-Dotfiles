#bin/bash
#install important packages and dependencies for config
#BREW
brew install pip3
brew install ranger
brew install neofetch
brew install neovim
brew install ffsend
brew install sassc
brew tap homebrew/cask-fonts
brew cask install font-firacode-nerd-font 
brew install lazygit
brew install lazydocker
pip3 install pywal
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/yabai

#CURL install OHMYYZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#installing dots NOTE: THIS WILL REMOVE FOLDERS BEFORE INSTALL
rm -rf $HOME/.config
rm -rf $HOME/scripts
rm -rf $HOME/spicetify_data/Themes
rm -rf $HOME/spicetify_data/config.ini
rm -rf $HOME/.zshrc
rm -rf $HOME/.skhdrc
rm -rf $HOME/.Xresources

mv scripts $HOME/scripts
mv .config $HOME/.config
mv spicetify_data $HOME/spicetify_data
mv .zshrc $HOME/.zshrc
mv .skhdrc $HOME/.skhdrc
mv .Xresources $HOME/.Xresources
mv wallpapers $HOME/Pictures
mv Files $HOME/Documents

gsetting up OHMYZSH
git clone https://github.com/reobin/typewritten.git $ZSH_CUSTOM/themes/typewritten
git clone https://github.com/GideonWolfe/vim.reaper.git
cd vim.reaper
sh update_config.sh

#setting up ubersicht
#Pecan
git clone https://github.com/zzzeyez/pecan.git "$HOME/Library/Application\ Support/Übersicht/widgets/pecan"
pecan-style --load developer

#notifications
https://github.com/zzzeyez/xanthia.git "$HOME/Library/Application\ Support/Übersicht/widgets/xanthia"

#linking files after installing
ln -s "${HOME}/Library/Application\ Support/Übersicht/widgets/xanthia/notify-send" "/usr/local/bin/notify-send"
ln -s "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"
ln -s "${HOME}/Library/Application\ Support/Übersicht/widgets/pecan/pecan-style" "/usr/local/bin/pecan-style"

#telling the user
source ~/.zshrc
walsetconstant ~/Pictures/wallpapers/landscapes journey-man-1364190-unsplash-19.jpg
echo "open neovim and type :PlugInstall"
echo "Change settings in iterm2 prefs"
echo "    - enable powerline glyphs"
echo "    - enable subpixel anti-aliasing"
echo "    - use ligatures, anti-aliased"
echo "    - change font to FiraCode Nerd Font"
echo "change Firefox, install firefox color and Tabless extention"
echo "type sa to source all files (hopefully runs without errors)"
