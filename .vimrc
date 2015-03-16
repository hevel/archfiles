execute pathogen#infect()
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=8
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
fu Select_c_style()
  if search('^\t', 'n', 150)
    set shiftwidth=8
    set noexpandtab
  el 
    set shiftwidth=4
    set expandtab
  en
endf
au BufRead,BufNewFile *.c,*.h call Select_c_style()
au BufRead,BufNewFile Makefile* set noexpandtab
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
set bomb
set encoding=utf-8
let python_highlight_all=1
syntax on
filetype plugin indent on
