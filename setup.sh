#!/bin/bash

mkdir -p ~/personal/

if [ -d ~/personal/fisher/ ]; then
    echo "fisher is already installed"
else
    echo "Installing fisher..."
    git clone https://github.com/jorgebucaran/fisher ~/personal/fisher
fi

mkdir -p ~/.config/fisher/{completions,functions}/
ln -s ~/personal/fisher/completions/fisher.fish ~/.config/fisher/completions/fisher.fish
ln -s ~/personal/fisher/functions/fisher.fish ~/.config/fisher/functions/fisher.fish

if command -v brew &> /dev/null; then
    echo "brew is already installed"
else
    echo "brew not installed, installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing brew formulae..."
for i in $(cat brew_formulae); do
    echo "    Installing $i"
    brew install $i
done

echo "Linking dotfiles..."
for i in *; do
    if [[ -d $i ]]; then
        echo "    Linking $i"
        stow -t $HOME $i
    fi
done
