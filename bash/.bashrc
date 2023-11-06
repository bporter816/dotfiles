# vi keybindings
set -o vi
bind '"kj":vi-movement-mode'

# nvm setup
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# environment
export EDITOR='nvim'

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

# source external configs
for f in ~/.bash_config/*; do
    source "$f"
done
