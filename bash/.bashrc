# vi keybindings
set -o vi
bind '"kj":vi-movement-mode'

# nvm setup
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# functions
function hs() {
    history | fzf | cut -c 8- | bash
}

# prompt
function red() {
    tput setaf 1
    echo -n "$@"
    tput sgr0
}

function green() {
    tput setaf 2
    echo -n "$@"
    tput sgr0
}

function yellow() {
    tput setaf 3
    echo -n "$@"
    tput sgr0
}

function blue() {
    tput setaf 4
    echo -n "$@"
    tput sgr0
}

function purple() {
    tput setaf 5
    echo -n "$@"
    tput sgr0
}

function cyan() {
    tput setaf 6
    echo -n "$@"
    tput sgr0
}

function gray() {
    tput setaf 7
    echo -n "$@"
    tput sgr0
}

function prompt_exit_status() {
    status="$?"
    if [ "$status" != 0 ]; then
        red "[$status] "
    fi
}

function prompt_git_branch() {
    if branch=$(git symbolic-ref --short HEAD 2> /dev/null); then
        yellow " ($branch)"
    fi
}

PS1='$(prompt_exit_status)\u@$(green \h) $(blue \W)$(prompt_git_branch) $ '

if command -v zoxide > /dev/null 2>&1; then
    eval "$(zoxide init bash)"
fi

# source external configs
for f in ~/.bash_config/*; do
    source "$f"
done
