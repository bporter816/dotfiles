abbr -a g git
abbr -a k kubectl
abbr -a tf terraform
abbr -a tg terragrunt
abbr -a vi nvim

if command -v bat > /dev/null 2>&1
    alias cat bat
end

if command -v eza > /dev/null 2>&1
    alias ls 'eza --icons --git'
end
