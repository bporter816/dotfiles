set -g fish_greeting

fish_add_path /opt/homebrew/bin
eval (brew shellenv fish)

if status is-interactive
    fish_vi_key_bindings
    bind -M insert -m default kj 'commandline -f repaint'

    # pyenv setup
    if command -v pyenv > /dev/null 2>&1
        set -Ux PYENV_ROOT $HOME/.pyenv
        fish_add_path $PYENV_ROOT/bin
        pyenv init - | source
    end

    # nvm setup
    set -gx NVM_DIR ~/.nvm
    if test -s "$NVM_DIR/nvm.sh"
        bass source "$NVM_DIR/nvm.sh"
    end

    # zoxide setup
    if command -v zoxide > /dev/null 2>&1
        zoxide init fish | source
    end
end
