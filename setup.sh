#!/bin/zsh

for i in *; do
    if [[ -d $i ]]; then
        echo "Linking $i"
        stow --dotfiles -t $HOME $i
    fi
done
