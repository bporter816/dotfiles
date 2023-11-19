#!/bin/bash

echo "Linking dotfiles..."
for i in *; do
    if [[ -d $i ]]; then
        echo "    Linking $i"
        stow -t $HOME $i
    fi
done

echo "Installing brew formulae..."
for i in $(cat brew_formulae); do
    echo "    Installing $i"
    brew install $i
done
