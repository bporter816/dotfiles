#!/bin/bash

mkdir -p ~/personal/

if command -v brew &>/dev/null; then
	echo "brew is already installed"
else
	echo "brew not installed, installing"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing brew formulae"
formulae=$(brew ls)
for i in $(cat brew_formulae); do
	if rg -q $i <<<$formulae; then
		echo "    $i already installed"
	else
		echo "    Installing $i"
		brew install $i
	fi
done

echo "Linking dotfiles"
for i in *; do
	if [[ -d $i ]]; then
		echo "    Linking $i"
		stow -t $HOME $i
	fi
done

echo "Installing asdf plugins"
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add python https://github.com/asdf-community/asdf-python.git
