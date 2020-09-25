
# MacOS Dotfiles

| Vim-gruvbox                              | Tile                                                      | Third Party App Support                          |
|------------------------------------------|-----------------------------------------------------------|--------------------------------------------------|
| Color Scheme                             | Floating preview                                          | Spotify Theme                                    |
| ![Wallpaper 1](/Preview/gruvbox-vim.png) | ![Floating on workspace 5,6](/Preview/gruvbox-tiling.png) | ![Spotify Preview](/Preview/gruvbox-spotify.png) |



> Here is my dotfiles, more previews are in the preview folder


### Table of Contents
You're sections headers will be used to reference location of destination.

- [Features](#features)
- [Bindings](#bindings)
- [Pre-Install](#pre-install)
- [How To Use](#how-to-use)


## Features

- Pywal Compliant
- Full Vim Config
- Übersicht Bar
- Spotify Theme
- Alacritty Theme
- Firefox Theme
- VSCode Theme
- Tiling Window Manager (Yabai)
- Hotkeys (skhd)
- ZSH Shell Config
- Useful Shell Scripts
- Picture in picture mode
- toggle on and off gaps & borders

yeah... I know, its pretty bloated

## Bindings

#### Vim Bindings
For neovim, I use the extremely well made [Vim Reaper](https://github.com/GideonWolfe/vim.reaper) bindings, made by GideonWolfe, for information about binds within vim, please
refer to the [Vim Reaper Repository](https://github.com/GideonWolfe/vim.reaper).

#### Launch App
| App           | Key Map              |
| ----          | ------               |
| Alacritty     | cmd + return         |
| Visual Studio | shift + cmd + return |
| Firefox       | alt + return         | 

#### Focus
| Bind        | Key Map     | Description                        |
| ----        | -------     | -----------                        |
| focus left  | alt + left  | sends focus to left window         |
| focus right | alt + right | sends focus to right window        |
| focus up    | alt + up    | sends focus to window above        |
| focus down  | alt + down  | sends focus to window below        |
| focus space | alt + #     | focusses space where # is a number |

#### Window Switching
| Bind         | Key Map             | Description                               |
| ----         | -------             | -----------                               |
| switch left  | shift + alt + left  | switches with window to the left          |
| switch right | shift + alt + right | switches with window to the right         |
| switch up    | shift + alt + up    | switches with window above                |
| switch down  | shift + alt + down  | switches with window below                |
| throw window | shift + alt + #     | throws the focussed window to a new space |

#### Window Changes
| Bind           | Key Map          | Description                         |
| ----           | -------          | -----------                         |
| increase left  | shift + alt + a  | increase size in left direction     |
| increase right | shift + alt + d  | increase size in right direction    |
| increase up    | shift + alt + w  | increase size in upward direction   |
| increase down  | shift + alt + s  | increase size in downward direction |
| decrease left  | shift + cmd + a  | decrease size in left direction     |
| decrease right | shift + cmd + d  | decrease size in right direction    |
| decrease up    | shift + cmd + w  | decrease size in upward direction   |
| decrease down  | shift + cmd + s  | decrease size in downward direction |
| move left      | shift + ctrl + a | move floating window left           |
| move right     | shift + ctrl + d | move floating window right          |
| move up        | shift + ctrl + w | move floating window up             |
| move down      | shift + ctrl + s | move floating window down           | 

### Tmux Bindings

We will use leader + x to indicate that we are wanting both to be pressed at the same time, and use
leader - x to indicate that we press leader and then the following key

| Bind             | Key Map             | Description                                                        |
| ----             | -------             | -----------                                                        |
| leader key       | ctrl + space        | this is the first key pressed ti initiate tmux binds (like neovim) |
| new window       | leader - c          | this will spawn a shell on a new 'tab/buffer'                      |
| next window      | leader - n          | goes to the next buffer in the cycle                               |
| previous window  | leader - p          | goes to the last buffer in the cycle                               |
| horizontal split | leader - shift + \  | will create a vertical line and split into two shells              |
| vertical split   | leader - -          | will create a horizontal line and split vertically                 |
| resize pane      | leader + arrow keys | to resize in all directions                                        |

In the config, you can uncomment if you want to have vim bindings for these basic movements

#### Misc Binds
| Bind               | Key Map         | Description                                                         |
| ----               | -------         | -----------                                                         |
| toggle gaps        | alt + a         | toggles gaps on and off, will respect the Übersicht widget          |
| toggle float       | alt + t         | center the window and float                                         |
| toggle float (2)   | shift + alt + t | center the window and float                                         |
| toggle border      | shift + alt + b | toggle the focussed window border                                   |
| picture-in-picture | alt + p         | pressing once will put window in pip, twice will make window sticky |
| exit pip           | shift + alt + p | takes window out of picture-in-picture                              |
| fill parent        | alt + d         | takes window to fill its parent container                           |
| fullscreen         | alt + f         | fills the screen and respects gaps and bar                          |
| Stock fullscreen   | shift + alt + f | fills screen with mac's maximise method                             |

## Dependencies

  REQUIREMENTS FOR INSTALL

      
      alacritty - terminal emulator

      firefox   - browser
                - you will need the extention firefox called pywalfox in order to theme
                - download tabless extention to put the wallpaper as firefox startup

      spotify   - music player

      Übersicht - top bar (may require additional setup)
                - will have to manually load widgets
                - use my fork of Simplebar to get same bar as mine

      neovim    - will have to launch vim using 'vi' command, then type ':PlugInstall'
                  once you do this all symbols should appear, you will need to make sure you are using same font as me to load symbols

      vscode    - will have to install via download, and have to use wal theme


[Back To The Top](#read-me-template)


## Installation and Usage

#### Installation - This wont work for themes outside of the master branch
```html
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/atidyshirt/MacOS-Dotfiles/master/install.sh)"
```

#### Usage

In order to apply themes using pywal, we must use the script found in `~/scripts/wallpaper.sh`.
This is because the theme needs to be applied to many different things and restart Yabai in order
to get applied, we can do this with the following command (assuming you are using my aliases in ~/.zshrc): 

```
    wall ~/path/to/image.jpg
```

---
<center>

[Back To The Top](#read-me-template) 

</center>

---
