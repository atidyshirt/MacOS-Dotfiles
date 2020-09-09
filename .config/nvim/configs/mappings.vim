"###################################################################################
"       __  ___                      _                    
"      /  |/  /____ _ ____   ____   (_)____   ____ _ _____
"     / /|_/ // __ `// __ \ / __ \ / // __ \ / __ `// ___/
"    / /  / // /_/ // /_/ // /_/ // // / / // /_/ /(__  ) 
"   /_/  /_/ \__,_// .___// .___//_//_/ /_/ \__, //____/  
"                 /_/    /_/               /____/         
"
"###################################################################################

"***********************************************************************************

" Main Vim Keybinds

"***********************************************************************************


" Set leader to space bar
let mapleader = " "
let maplocalleader = "?"

" Windows
" Navigate to left window.
nnoremap <C-h> <C-w>h
" Navigate to down window.
nnoremap <C-j> <C-w>j
" Navigate to top window.
nnoremap <C-k> <C-w>k
" Navigate to right window.
nnoremap <C-l> <C-w>l
" Horizontal split then move to bottom window.
nnoremap <Leader>- <C-w>s
" Vertical split then move to right window.
nnoremap <Leader>\| <C-w>v<C-w>l
" Cycle tabs with Tab and Shift+Tab
nnoremap<silent> <Tab> :bnext<CR>
nnoremap<silent> <S-Tab> :bprevious<CR>
" Kill buffer with Space+bk
nnoremap <leader>bk :bdelete<CR>

"Faster ESC.
inoremap jk <ESC>
inoremap kj <ESC>

" Indent controls
" Reselect text ater indent/unindent.
vnoremap < <gv
vnoremap > >gv
" Tab to indent in visual mode.
vnoremap <Tab> >gv
" Shift+Tab to unindent in visual mode.
vnoremap <S-Tab> <gv

" Text alignment
nnoremap <Leader>Al :left<CR>
nnoremap <Leader>Ac :center<CR>
nnoremap <Leader>Ar :right<CR>
vnoremap <Leader>Al :left<CR>
vnoremap <Leader>Ac :center<CR>
vnoremap <Leader>Ar :right<CR>

"***********************************************************************************

" Plugin specific keybinds

"***********************************************************************************
 
" COC Keybinds
" Remap keys for gotos
map <leader>cd <Plug>(coc-definition)
nmap <leader>ct <Plug>(coc-type-definition)
nmap <leader>ci <Plug>(coc-implementation)
map <leader>cr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>crn <Plug>(coc-rename)
" Remap for format selected region
xmap <leader>cf <Plug>(coc-format-selected)
nmap <leader>cf <Plug>(coc-format-selected)
" Fix current line
nmap <leader>cfl  <Plug>(coc-fix-current)
" Using CocList
" Show all diagnostics
nnoremap  <Leader>cdi  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap  <Leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap  <Leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <Leader>co  :<C-u>CocList outline<cr>
" Completion keybinds

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" shift+tab cycles backwards 
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Enter to confirm completion
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Git keybinds
" Git status
nnoremap  <Leader>gs  :Gstatus<cr>
" Git diff in split window
nnoremap  <Leader>gd  :Gdiffsplit<cr>
" Git commit
nnoremap  <Leader>gc  :Gcommit<cr>
" Git push 
nnoremap  <Leader>gP  :Gpush<cr>
" Git pull 
nnoremap  <Leader>gp  :Gpull<cr>
" Git move 
nnoremap  <Leader>gm  :Gmove<cr>
" Git merge 
nnoremap  <Leader>gM  :Gmerge<cr>
" browse current file on web
nnoremap  <Leader>gb  :Gbrowse<cr>
" browse current line on web
nnoremap  <Leader>gbl  :CocCommand git.browserOpen<cr>
" View chunk information in preview window. 
nnoremap  <Leader>gh  :CocCommand git.chunkInfo<cr>
" View commit information in preview window. 
nnoremap  <Leader>gsc  :CocCommand git.showCommit<cr>
" Toggle git gutter sign columns
nnoremap  <Leader>gg  :CocCommand git.toggleGutters<cr>


" NERD Commenter
" Toggle a sexy comment
nnoremap <leader>ns :call NERDComment(0,"sexy")<cr>
vnoremap <leader>ns :call NERDComment(1,"sexy")<cr>
" append a  comment
nnoremap <leader>na :call NERDComment(0,"append")<cr>
vnoremap <leader>na :call NERDComment(1,"append")<cr>
" uncomment section
nnoremap <leader>nu :call NERDComment(0,"uncomment")<cr>
vnoremap <leader>nu :call NERDComment(1,"uncomment")<cr>
" invert comments
nnoremap <leader>ni :call NERDComment(0,"invert")<cr>
vnoremap <leader>ni :call NERDComment(1,"invert")<cr>
" comment section
nnoremap <leader>nc :call NERDComment(0,"comment")<cr>
vnoremap <leader>nc :call NERDComment(1,"comment")<cr>
"

" TOGGLES
" Opens tagbar on right side of screen
nmap <leader>tv :Vista!!<CR>
" Markdown preview
nmap <Leader>tp <Plug>MarkdownPreviewToggle
" Lazygit
nnoremap <silent> <Leader>tg :call ToggleLazyGit()<CR>
" Lazydocker
nnoremap <silent> <Leader>td :call ToggleLazyDocker()<CR>
" Quick Shell (zz) to exit
map <leader>tz :call ToggleShell()<CR>
" Nerd tree
nnoremap <leader>tn :NERDTreeToggle<CR>

" Finding info
" Floating tag finder
nnoremap  <Leader>ft  :Vista finder coc<cr>
" FILE location
nmap <Leader>ff :FZF<cr>
map <leader>fr :RnvimrToggle<CR>


""""""""""""""
" Which Key? "
""""""""""""""
let g:which_key_map =  {}

" Folders
let g:which_key_map.A = { 
    \ 'name' : '+Alignment',
    \ 'c'    : ['center', 'center'],
    \ 'l'    : ['left', 'left'],
    \ 'r'    : ['right', 'right'],
\ }
let g:which_key_map.f = { 
    \ 'name' : '+Find',
    \ 'f'    : ['fuzzy-file-finder', 'fuzzy-file-finder'],
    \ 'r'    : ['ranger', 'ranger'],
    \ 't'    : ['find-tags', 'find-tags'],
\ }

let g:which_key_map.g = { 
    \ 'name' : '+Git',
    \ 'b'    : ['browse-file', 'browse-file'],
    \ 'bl'   : ['browse-line', 'browse-line'],
    \ 'c'    : ['commit', 'commit'],
    \ 'h'    : ['chunk-info', 'chunk-info'],
    \ 'p'    : ['pull', 'pull'],
    \ 'P'    : ['push', 'push'],
    \ 'm'    : ['move', 'move'],
    \ 'M'    : ['merge', 'merge'],
    \ 's'    : ['status', 'status'],
    \ 'sc'   : ['show-commit', 'show-commit'],
    \ 'gg'   : ['toggle-gutters', 'toggle-gutters'],
\ }
let g:which_key_map.n = { 
    \ 'name' : '+NerdComment',
    \ 'a'    : ['append-comment', 'append-comment'],
    \ 'c'    : ['comment', 'comment'],
    \ 'i'    : ['invert-comment', 'invert-comment'],
    \ 's'    : ['sexy-comment', 'sexy-comment'],
    \ 'u'    : ['remove-comment', 'remove-comment'],
\ }
let g:which_key_map.t = {
    \ 'name' : '+Toggle',
    \ 'd'    : ['lazydocker', 'lazydocker'],
    \ 'g'    : ['lazygit', 'lazygit'],
    \ 'n'    : ['nerd-tree', 'nerd-tree'],
    \ 'p'    : ['markdown-preview', 'markdown-preview'],
    \ 'v'    : ['vista', 'vista'],
    \ 'z'    : ['shell', 'shell'],
\ }

let g:which_key_map.c = {
    \ 'name' : '+Compile',
    \ 'R'    : ['run-code', 'run-code'],
    \ 'C'    : ['run-compiler', 'run-compiler'],
\ }

nnoremap <silent> ? :WhichKey! which_key_map<CR>

