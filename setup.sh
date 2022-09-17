#!/bin/zsh

# Linux setup
# sudo apt install stow
# sudo apt install vim
# sudo apt install git
# sudo apt install zsh
# sudo apt install fd-find
# sudo apt install ripgrep
# ln -s $(which fdfind) ~/.local/bin/fd

for i in *; do
    if [[ -d $i ]]; then
        echo "Linking $i"
        stow -t $HOME $i
    fi
done
