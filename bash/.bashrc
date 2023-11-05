# vi keybindings
set -o vi
bind '"kj":vi-movement-mode'

# nvm setup
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# basic aliases
alias ls='ls --color=auto'
alias ll='ls -al'
