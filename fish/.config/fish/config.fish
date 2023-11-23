set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    pyenv init - | source

    set -gx NVM_DIR ~/.nvm
    if test -s "$NVM_DIR/nvm.sh"
        bass source "$NVM_DIR/nvm.sh"
    end

    fish_vi_key_bindings
    bind -M insert -m default kj 'commandline -f repaint'

    if command -v zoxide > /dev/null 2>&1
        zoxide init fish | source
    end
end
