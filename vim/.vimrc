set nocompatible

" Plugin Management
call plug#begin('~/.vim/plugged')

" General
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'

" Languages
Plug 'rust-lang/rust.vim'

" Color schemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'reedes/vim-colors-pencil'
Plug 'romainl/Apprentice'

call plug#end()

" Visual
colorscheme gruvbox
"colorscheme PaperColor
"colorscheme apprentice
set background=dark
set t_Co=256

set textwidth=80
set colorcolumn=81
set number
set cursorline

" Keybindings
let mapleader=","
nmap ; :
imap kj <Esc>
nmap <F2> :set spell
nmap <F8> :TagbarToggle<CR>
nmap ZZ :xa<CR>

" Indentation
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

