function xin --description "Like xargs, but with stdin instead of args"
    while read line; echo -n $line | command $argv; end
end
