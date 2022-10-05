function cpm --description "Copy a single file to multiple destinations"
    echo $argv[2..-1] | xargs -n 1 cp -v $argv[1]
end
