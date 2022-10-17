function pre --description "Prefix each line"
    sed "s/^/$argv[1]/"
end
