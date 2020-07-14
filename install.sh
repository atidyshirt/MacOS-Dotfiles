# This is an installer of all the dependencies and my dotfiles
# Prerequisites to all of the files
echo "Installing ohmyzsh"
/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Homebrew PKGs moved to brewdepen.sh
echo "Installing Homebrew and it's custom packages" 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
#Installing Homebrew Depends
brew tap homebrew/cask-fonts
brew cask install font-firacode-nerd-font 
brew cask install ubersicht
brew install python
brew install pip3
brew install ranger
brew install neofetch
brew install neovim
brew install ffsend
brew install sassc
brew install khanhas/tap/spicetify-cli
brew install lazygit
brew install lazydocker
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/yabai  
sudo pip3 install pywal
sudo pip3 install pywalfox
brew services start yabai
brew update
brew services restart --all
#Clone Dotfile Repo 
echo "Cloning Dotfiles"
git clone https://github.com/atidyshirt/MacOS-Dotfiles.git 
#Clone bar into default Übersicht location
git clone https://github.com/atidyshirt/simple-bar.git $HOME/Library/Application\ Support/Übersicht/widgets/simple-bar
cd MacOS-Dotfiles

echo "Creating a backup of all configs in ~/config_backup"

mkdir $HOME/config_backup

# following code is stolen from here: https://blog.sleeplessbeastie.eu/2013/03/12/simple-shell-script-to-backup-selected-directories/
# Parent backup directory
backup_parent_dir="$HOME/config_backup"

# Directories to backup
backup_me="$HOME/scripts/ $HOME/ .config/ $HOME/bin/ $HOME/spicetify_data/ $HOME/.zshrc $HOME/.skhdrc $HOME/.Xresources $HOME/Pictures $HOME/.yabairc"

# Check and create backup directory
backup_date=`date +%Y_%m_%d_%H_%M`
backup_dir=${backup_parent_dir}/configs_${backup_date}
mkdir -p $backup_dir

# Perform backup
for directory in $backup_me
do
        archive_name=`echo ${directory} | sed s/^\\\/// | sed s/\\\//_/g`
        tar pcfzP ${backup_dir}/${archive_name}.tgz ${directory} 2>&1 | tee > ${backup_dir}/${archive_name}.log
done

echo "Installing Dotfiles from Cloned Repository"
cp scripts $HOME/scripts
cp .config $HOME/.config
cp bin $HOME/bin
cp spicetify_data $HOME/spicetify_data
cp .zshrc $HOME/.zshrc
cp .skhdrc $HOME/.skhdrc
cp .Xresources $HOME/.Xresources
cp wallpapers $HOME/Pictures
cp .yabairc $HOME/.yabairc 

echo "Starting pywalfox setup"
sudo pywalfox setup

echo "Done!"
