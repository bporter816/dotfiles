set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')

" General
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'

" Languages
Plug 'rust-lang/rust.vim'

" Color schemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'reedes/vim-colors-pencil'
Plug 'romainl/Apprentice'

call plug#end()

" Plugin configuration
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg = 'dark'
let g:airline_theme = 'solarized'

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1

" Visual
syntax enable
set background=dark
colorscheme solarized

set textwidth=120
set colorcolumn=121
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

autocmd FileType html setlocal tabstop=2 shiftwidth=2
autocmd FileType plaintex setlocal tabstop=2 shiftwidth=2
