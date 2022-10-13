set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'morhetz/gruvbox'

" Utils
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Language support
Plug 'hashivim/vim-terraform'
Plug 'udalov/kotlin-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'dag/vim-fish'

Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

call plug#end()

" Visual
set bg=dark
colorscheme gruvbox
autocmd BufRead,BufNewFile *.hcl set filetype=terraform

" Statusline
set laststatus=2

" Automatically select regex engine
set regexpengine=0

set colorcolumn=81,121
set number
set relativenumber
set cursorline

" Keybindings
let mapleader=" "
imap kj <esc>

map <leader>g :GBrowse<CR>
map <leader>b :Git blame<CR>

" Switch between open files
map <leader>h :N<CR>
map <leader>l :n<CR>

" Easier pane switching
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" Keep cursor centered
nnoremap n nzz
nnoremap N Nzz

" Navigate through wrapped lines
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Moving lines around
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
inoremap <C-j> <esc>:m .+1<CR>==

command Q Rexplore

" Indentation
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
