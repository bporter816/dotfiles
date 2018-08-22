#!/bin/zsh
update() {
    if [ -d $HOME/git/$1 ]; then
        echo "updating $1"
        cd $HOME/git/$1
        git pl
        cd -
    else
        echo "$1 does not exist in $HOME/git/"
    fi
}
