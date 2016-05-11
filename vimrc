call pathogen#infect()

set background=light
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


" Syntaxic checks
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_sh_checkers = ['shellcheck']

