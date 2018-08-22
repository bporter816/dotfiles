#!/bin/zsh

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

# clone repos from repos.txt
while read -r repo dest; do
    eval dest=$dest # expand $HOME
    clone $repo $dest
done < repos.txt

# symlink files
link git/.gitconfig ~/.gitconfig
link ruby/.gemrc    ~/.gemrc
link ruby/.irbrc    ~/.irbrc
link vim/.vimrc     ~/.vimrc
link zsh/.zshrc     ~/.zshrc

# create rbenv plugins folder
mkdir -p $HOME/git/rbenv/plugins

# create vim-plug and ruby-build symlinks
link_manual $HOME/git/vim-plug/plug.vim $HOME/.vim/autoload/plug.vim
link_manual $HOME/git/ruby-build        $HOME/git/rbenv/plugins/ruby-build
