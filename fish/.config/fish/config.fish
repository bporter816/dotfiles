set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    pyenv init - | source

    fish_vi_key_bindings
    bind -M insert -m default kj 'commandline -f repaint'

    zoxide init fish | source
end
