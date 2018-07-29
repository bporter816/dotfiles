#!/bin/bash

DIR=$(readlink -f "$0")
DIRNAME=$(dirname $DIR)

clone() {
    if [ -d $2 ]; then
        echo "$2 already exists"
    else
        git clone $1 $2
    fi
}

link() {
    unlink $2
    ln -s $DIRNAME/$1 $2
}

link_manual() {
    unlink $2
    ln -s $1 $2
}

clone https://github.com/creationix/nvm         $HOME/git/nvm
clone https://github.com/junegunn/vim-plug      $HOME/git/vim-plug
clone https://github.com/pyenv/pyenv            $HOME/git/pyenv
clone https://github.com/robbyrussell/oh-my-zsh $HOME/git/oh-my-zsh
clone https://github.com/rvm/rvm                $HOME/git/rvm

link git/.gitconfig ~/.gitconfig
link ruby/.gemrc    ~/.gemrc
link ruby/.irbrc    ~/.irbrc
link ruby/.rvmrc    ~/.rvmrc
link vim/.vimrc     ~/.vimrc
link zsh/.zshrc     ~/.zshrc

link_manual $HOME/git/vim-plug/plug.vim ~/.vim/autoload/plug.vim

source zsh/.zshrc
