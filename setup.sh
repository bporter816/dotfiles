#!/bin/bash
DIR=$(readlink -f "$0")
DIRNAME=$(dirname $DIR)

link ()
{
    unlink $2
    ln -s $DIRNAME/$1 $2
}

link git/.gitconfig ~/.gitconfig
link vim/.vimrc     ~/.vimrc
link zsh/.zshrc     ~/.zshrc
