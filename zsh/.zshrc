export ZSH=$HOME/git/oh-my-zsh

ZSH_THEME="ys"

CASE_SENSITIVE="false"      # case sensistive completion
HYPHEN_INSENSITIVE="false"  # hyphen insensitive completion

DISABLE_AUTO_UPDATE="false" # auto update check
export UPDATE_ZSH_DAYS=13   # check frequency

DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
DISABLE_UNTRACKED_FILES_DIRTY="false"
HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  last-working-dir
)

source $ZSH/oh-my-zsh.sh

# scripts setup
if [ -d $HOME/git/dotfiles/scripts ]; then
    for file in $HOME/git/dotfiles/scripts/*.sh; do
        source $file
    done
fi

# go setup
export PATH="/usr/local/go-1.11/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# java setup
export PATH="/usr/java/jdk-10.0.2/bin:$PATH"

# nvm setup
export NVM_DIR="$HOME/git/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# pyenv setup
export PYENV_ROOT="$HOME/git/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv setup
export RBENV_ROOT="$HOME/git/rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

# vim-superman setup
export PATH="$PATH:$HOME/.vim/plugged/vim-superman/bin"

# kattis-cli setup
export KATTIS_ROOT="$HOME/git/kattis-cli"
alias ks="python3 $KATTIS_ROOT/submit.py"


# aliases
alias man="vman"
alias o="xdg-open"
alias ut="ssh bporter@linux.cs.utexas.edu"
alias utg="ssh -X bporter@linux.cs.utexas.edu"
