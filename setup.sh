#!/bin/zsh

for i in *; do
    if [[ -d $i ]]; then
        echo "Linking $i"
        stow -t $HOME $i
    fi
done
