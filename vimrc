call pathogen#infect()

set background=light
colorscheme desert
syntax enable

set hlsearch

set nocompatible

filetype plugin indent on

set ruler
set rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P

set expandtab
set tabstop=4
set shiftwidth=4

" a - terse messages (like [+] instead of [Modified]
" t - truncate file names
" I - no intro message when starting vim fileless
" T - truncate long messages to avoid having to hit a key
set shortmess=atTI

" display the number of (characters|lines) in visual mode, also cur command
set showcmd

" current mode in status line
set showmode

" max items in popup menu
set pumheight=8

" show number column
set number
set numberwidth=3

" case insensitive search if all lowercase
set ignorecase smartcase

" turn off bells, change to screen flash
set visualbell

" highlight extra spaces at then end of line
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Syntaxic checks
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_sh_checkers = ['shellcheck']

" sudo-write
" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %

let mapleader = ","
map <leader>b :b#<CR>
map <leader>q :q<CR>
map <leader>w :w<CR>

" In insertion mode, highlight the current line
highlight CursorLine cterm=reverse gui=reverse
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

" CTRL-C Quit insert mode ... Does not trigger the |InsertLeave| autocommand event.
" Never needed this functionnality, i disable it to get the "default"  ESC
map <C-C> <ESC>
