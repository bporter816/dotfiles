#!/bin/bash

if command -v brew &> /dev/null; then
    echo "brew is already installed"
else
    echo "brew not installed, installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

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
