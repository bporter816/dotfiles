#!/bin/bash
alias ls='ls --color=auto'
alias ll='ls -al'

alias g='git'
alias k='kubectl'
alias tf='terraform'
alias tg='terragrunt'
alias vi='nvim'

if command -v bat > /dev/null 2>&1; then
    alias cat='bat'
fi

if command -v eza > /dev/null 2>&1; then
    alias ls='eza --icons --git'
fi
