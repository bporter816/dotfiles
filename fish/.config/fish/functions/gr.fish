function gr --description "Go to the root of the current git repo"
    cd (git rev-parse --show-toplevel)
end
