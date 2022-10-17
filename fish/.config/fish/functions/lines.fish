function lines --description "Pick a line range"
    sed -n "$argv[1],$argv[2]p"
end
