# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/git/oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

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
)

source $ZSH/oh-my-zsh.sh

alias o="xdg-open"

alias ut="ssh bporter@linux.cs.utexas.edu"
alias utg="ssh -X bporter@linux.cs.utexas.edu"

export NVM_DIR="$HOME/git/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
