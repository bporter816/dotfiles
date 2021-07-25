# Pick line $1 from input
function line() {
    sed -n "$1p"
}

# Add trailing newlines to files that don't have them
function fix-newlines() {
    for i in $1; do
        tail -c 1 $i | od -ta | grep -q "nl" || echo >> $i
    done
}
