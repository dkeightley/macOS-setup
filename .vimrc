execute pathogen#infect()
syntax on
set paste
filetype plugin indent on

" YAML spaces
"autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab

if !has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    set background=dark
endif

colorscheme solarized

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Indentation stuff

"set autoindent

" 2 space hard tabs by default
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noexpandtab

" Other nice stuff

" Save buffer after a certain time after leaving insert mode
set updatetime=200
autocmd BufLeave,CursorHold,InsertLeave * silent! wa

" Autoreload all files
set autoread

" Automatically write all files when exiting vim and other things
" that may cause loss of edits
"set autowriteall

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Share with system cliboard
"set clipboard=unnamed
"set pastetoggle=<Leader>v

" Persisent undo
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
