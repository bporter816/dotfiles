set nocompatible

" Plugin Management
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" General
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'

" Languages
Plug 'rust-lang/rust.vim'

" Color schemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'reedes/vim-colors-pencil'
Plug 'romainl/Apprentice'

call plug#end()

" Plugin Configuration
"     Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Auto commands
"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd p

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

