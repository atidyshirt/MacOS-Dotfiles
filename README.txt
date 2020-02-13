DOTFILES

READ BEFORE INSTALL

  for anyone going to install these, you may want to alter the install file as
  the default install file will create directories through your documents folder

-----------------------------------------------------------------------------------------------
 
  REQUIREMENTS FOR INSTALL

    Other downloads needed (before install)
      
      iterm2    - terminal emulator

      Amythest  - window manager
                - user will have to manually setup configuration

      firefox   - browser
                - download nighttab extention and setup

      spotify   - music player

      Übersicht - top bar (may require additional setup)
                - will have to manually load widgets

      NerdFonts - to get symbols to work in vim, you will need to set nerdfonts in iterm2


    Manual Configuration

      neovim    - will have to launch vim using 'vi' command, then type ':PlugInstall'
                  once you do this and change font type to 'Hack Nerd Font' all symbols
                  should appear

      vscode    - will have to install via download, and have to use wal theme

-----------------------------------------------------------------------------------------------

   Installation

      >  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      >  brew install git
      >  git clone https://github.com/atidyshirt/MacOS-Dotfiles.git
      >  cd MacOS-Dotfiles
      >  sh install.sh
