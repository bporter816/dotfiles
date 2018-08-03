#!/bin/bash

DIR=$(readlink -f "$0")
DIRNAME=$(dirname $DIR)

clone() {
    if [ -d $2 ]; then
        echo "$2 already exists"
    else
        git clone ssh://git@github.com/$1 $2
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

clone creationix/nvm         $HOME/git/nvm
clone junegunn/vim-plug      $HOME/git/vim-plug
clone pyenv/pyenv            $HOME/git/pyenv
clone rbenv/rbenv            $HOME/git/rbenv
clone rbenv/ruby-build       $HOME/git/ruby-build
clone robbyrussell/oh-my-zsh $HOME/git/oh-my-zsh

link git/.gitconfig ~/.gitconfig
link ruby/.gemrc    ~/.gemrc
link ruby/.irbrc    ~/.irbrc
link vim/.vimrc     ~/.vimrc
link zsh/.zshrc     ~/.zshrc

mkdir -p $HOME/git/rbenv/plugins

link_manual $HOME/git/vim-plug/plug.vim $HOME/.vim/autoload/plug.vim
link_manual $HOME/git/ruby-build        $HOME/git/rbenv/plugins/ruby-build

source zsh/.zshrc
