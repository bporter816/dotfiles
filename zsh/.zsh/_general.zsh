eval "$(pyenv init --path)"
export EDITOR="nvim"

# Pick a line
function line() {
    sed -n "$1p"
}

# Pick a line range
function lines() {
    sed -n "$1,$2p"
}

# Get the last column
function lc() {
    awk '{print $NF}'
}

# Copy a single file to multiple destinations
function cpm() {
    echo $@[2,-1] | xargs -n 1 cp -v $@[1]
}

# Copy a file and change to the directory to where it was copied
function cpcd() {
    cp $1 $2 && cd $2
}

# Add trailing newlines to files that don't have them
function fix-newlines() {
    for i in $1; do tail -c 1 $i | od -ta | grep -q "nl" || (echo "Appending newline to $i" && echo >> $i); done
}

# Like xargs, but with stdin instead of args
function xin() {
    while read -r line; do echo -n $line | $@; done
}

# Prefix each line
function pre() {
    sed "s/^/$1/"
}
