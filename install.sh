# This is an installer of all the dependencies and my dotfiles

# Prerequisites to all of the files
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installing homebrew dependencies
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
brew cask install ubersicht
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/yabai

#Clone bar into default Übersicht location
git clone https://github.com/atidyshirt/simple-bar.git $HOME/Library/Application\ Support/Übersicht/widgets/simple-bar

rm -rf $HOME/.config
rm -rf $HOME/scripts
rm -rf $HOME/spicetify_data/Themes
rm -rf $HOME/spicetify_data/config.ini
rm -rf $HOME/.zshrc
rm -rf $HOME/.skhdrc
rm -rf $HOME/.Xresources
rm -rf $HOME/bin

mv scripts $HOME/scripts
mv .config $HOME/.config
mv bin $HOME/bin
mv spicetify_data $HOME/spicetify_data
mv .zshrc $HOME/.zshrc
mv .skhdrc $HOME/.skhdrc
mv .Xresources $HOME/.Xresources
mv wallpapers $HOME/Pictures
