set -g fish_greeting

fish_add_path /opt/homebrew/bin
eval (brew shellenv fish)

if status is-interactive
    fish_vi_key_bindings
    bind -M insert -m default kj 'commandline -f repaint'

    # ASDF configuration code
    if test -z $ASDF_DATA_DIR
        set _asdf_shims "$HOME/.asdf/shims"
    else
        set _asdf_shims "$ASDF_DATA_DIR/shims"
    end

    # Do not use fish_add_path (added in Fish 3.2) because it
    # potentially changes the order of items in PATH
    if not contains $_asdf_shims $PATH
        set -gx --prepend PATH $_asdf_shims
    end
    set --erase _asdf_shims

    # zoxide setup
    if command -v zoxide > /dev/null 2>&1
        zoxide init fish | source
    end
end
