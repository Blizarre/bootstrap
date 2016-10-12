" Vim syntax file
" Language:     Simon logs
" Maintainer:   Simon Marache-Francisco <null/usr/share/vim/vim73/>
" Filenames:    *.cwsmfmarkdown
" Last Change:	2016

if exists("b:current_syntax")
  finish
endif

syn match title "^=\+\n.\+$"
syn match comment "^> .\+$"
syn match TODO "TODO.\+$"
syn match DONE "DONE.\+$"
syn match TODO "\[✗\]"
syn match DONE "\[✓\]"
syn match FIXME "FIXME.\+$"
syn match important "\*\*.\+\*\*"

highlight smfDone ctermfg=Green guifg=Green

hi def link title                   Comment
hi def link TODO              Statement
hi def link DONE              smfDone
hi def link FIXME              Error
hi def link important        Underlined
hi def link comment          PreProc
