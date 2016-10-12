set nonumber

map <buffer> <leader>d i========================<CR><ESC>"=strftime('%c')<CR>Po
map <buffer> <leader>c :s/\[✗\]/[✓]/e<CR>:s/^TODO/DONE/e<CR>
map <buffer> <leader>a I [✗] 
