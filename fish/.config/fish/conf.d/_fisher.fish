# Plugins are usually installed alongside user config.
# This puts them in a separate directory so they can be gitignored.
set fisher_path ~/.config/fisher

if test -d $fisher_path/completions
    set fish_complete_path $fish_complete_path $fisher_path/completions
end

if test -d $fisher_path/functions
    set fish_function_path $fish_function_path $fisher_path/functions
end

for i in $fisher_path/conf.d/*.fish
    source $i
end
