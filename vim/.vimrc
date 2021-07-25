set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'morhetz/gruvbox'

" Language support
Plug 'hashivim/vim-terraform'

call plug#end()

" Visual
colorscheme gruvbox
autocmd BufRead,BufNewFile *.hcl set filetype=terraform

set textwidth=120
set colorcolumn=121
set number
set relativenumber
set cursorline

" Keybindings
let mapleader=" "
imap kj <Esc>

" Easier pane switching
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

command Q Rexplore

" Indentation
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
