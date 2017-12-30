set nocompatible
filetype off

"Plugin configuration
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" Visual
colorscheme slate
set colorcolumn=81
set number

" Keybindings
let mapleader=","
nmap ; :
imap kj <Esc>

" Indentation
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
