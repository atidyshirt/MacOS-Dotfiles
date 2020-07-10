# This is an installer of all the dependencies and my dotfiles

# Prerequisites to all of the files
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Homebrew PKGs moved to brewdepen.sh

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

sudo pywalfox setup
