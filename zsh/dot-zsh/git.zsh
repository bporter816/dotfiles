alias g="git"
alias gt='cd $(git rev-parse --show-toplevel)'

# Switch to a git branch by grepping for branch name
function br() {
    git branch | rg $1 | head -n 1 | lc | xargs git checkout
}
