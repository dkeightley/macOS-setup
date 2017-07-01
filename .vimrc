execute pathogen#infect()
filetype plugin indent on
set paste
syntax enable
if has('gui_running')
    set background=light
else
    set background=dark
endif
colorscheme solarized

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

