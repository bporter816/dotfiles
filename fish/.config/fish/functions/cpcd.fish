function cpcd --description "Copy a file and change to the directory to where it was copied"
    cp $argv[1] $argv[2] && cd $argv[2]
end
