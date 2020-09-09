" This script contains  a list of Vim-Plugged plugins 
runtime configs/plugins.vim
" This script contains general neovim settings 
runtime configs/main.vim
" This script contains plugin specific settings
 runtime configs/plugin-settings.vim
" This script contains mappings
runtime configs/mappings.vim
" This script contains functions
runtime configs/functions.vim

" Italics in comments
set t_ZH=^[[3m
set t_ZR=^[[23m
highlight Comment cterm=italic
au Colorscheme wal :hi Keyword gui=italic cterm=italic

