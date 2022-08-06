eval "$(pyenv init --path)"
export EDITOR="vim"

# Pick a line
function line() {
    sed -n "$1p"
}

# Get the last column
function lc() {
    awk '{print $NF}'
}

# Copy a file and change to the directory to where it was copied
function cpcd() {
    cp $1 $2 && cd $2
}

# Add trailing newlines to files that don't have them
function fix-newlines() {
    for i in $1; do
        tail -c 1 $i | od -ta | grep -q "nl" || echo >> $i
    done
}
