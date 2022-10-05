function fix-newlines --description "Add trailing newlines to files that don't have them"
    for i in $argv; tail -c 1 $i | od -ta | rg -q 'nl'; or echo "Appending newline to $i" && echo >> $i; end
end
