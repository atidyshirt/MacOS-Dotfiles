"***********************************************************************************
"   __  ___         _               ____       __   __    _                   
"  /  |/  / ___ _  (_)  ___        / __/ ___  / /_ / /_  (_)  ___   ___ _  ___
" / /|_/ / / _ `/ / /  / _ \      _\ \  / -_)/ __// __/ / /  / _ \ / _ `/ (_-<
"/_/  /_/  \_,_/ /_/  /_//_/     /___/  \__/ \__/ \__/ /_/  /_//_/ \_, / /___/
"                                                                 /___/
"
"***********************************************************************************



" Colorscheme
colorscheme wal
set background=dark

augroup specify_filetype
    autocmd!
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

" Compiling programs and running interpreted programs from vim
augroup run
    autocmd filetype python nnoremap <buffer> <Leader>cR :w <bar> :call ToggleRun('python3 '. @%)<CR>
    autocmd filetype java nnoremap <buffer> <leader>cR <bar> :!java shellescape(%<)<CR>
    autocmd filetype c nnoremap <leader>cR :call ToggleRun('./*') <CR>
augroup END

augroup compile
    autocmd filetype java nnoremap <buffer> <leader>cC <bar> :!javac shellescape(%)<CR>
    autocmd filetype c nnoremap <buffer> <Leader>cC :w <bar>:!gcc % -std=c99 -Wall -Werror -g -o %< <CR>
augroup END

" Longer leader key timeout
set timeout timeoutlen=1500

" Enable spell-checking for certain files
autocmd FileType text,markdown setlocal spell

" Limit line length for text files
autocmd FileType text,markdown,tex setlocal textwidth=180

" Don't automatically collapse markdown and Latex
set conceallevel=0
let g:tex_conceal = ""
let g:python_host_skip_check = 1
let g:python3_host_skip_check = 1

" Don't display mode in command line (airline already shows it)
set noshowmode

" Automatically re-read file if a change was detected outside of vim
set autoread

" no case-sensitive search unless uppercase is present
set ignorecase
set smartcase

" Enable mouse scroll
set mouse=a

" Allow a new buffer to be opened without saving current
set hidden

" Statusline Config
set statusline+=%F
set cmdheight=1

" Tab Settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set shiftround
set noswapfile

" Italics

" Enable syntax highlighting
syntax on

" Print syntax highlighting.
set printoptions+=syntax:y

" Matching braces/tags
set showmatch

" Do not back up temporary files.
set backupskip=/tmp/*,/private/tmp/*"

" Store backup files in one place.
set backupdir^=$HOME/.config/nvim//storage/backups//

" Store swap files in one place.
set dir^=$HOME/.config/nvim//storage/swaps//

" Store undo files in one place.
set undodir^=$HOME/.config/nvim/storage/undos//

" tell folding menus to fuck off
set nofoldenable
set nowrap

" Turns on detection for fyletypes, indentation files and plugin files
filetype plugin indent on

" Split window appears right the current one.
set splitright

" Make sure compatible mode is disabled
set nocompatible

" Share yank buffer with system clipboard
set clipboard=unnamedplus

" Show next 3 lines while scrolling.
if !&scrolloff
    set scrolloff=3
endif

" Show next 5 columns while side-scrolling.
if !&sidescrolloff
    set sidescrolloff=5
endif

" Jump to the last known position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Relative line numbers
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Subscript digraphs for maths
"alphsubs ---------------------- {{{
        execute "digraphs ks " . 0x2096
        execute "digraphs as " . 0x2090
        execute "digraphs es " . 0x2091
        execute "digraphs hs " . 0x2095
        execute "digraphs is " . 0x1D62
        execute "digraphs ks " . 0x2096
        execute "digraphs ls " . 0x2097
        execute "digraphs ms " . 0x2098
        execute "digraphs ns " . 0x2099
        execute "digraphs os " . 0x2092
        execute "digraphs ps " . 0x209A
        execute "digraphs rs " . 0x1D63
        execute "digraphs ss " . 0x209B
        execute "digraphs ts " . 0x209C
        execute "digraphs us " . 0x1D64
        execute "digraphs vs " . 0x1D65
        execute "digraphs xs " . 0x2093
"}}}




