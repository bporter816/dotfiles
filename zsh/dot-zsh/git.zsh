alias g="git"

# Go to the root of the current repo
alias gt='cd $(git rev-parse --show-toplevel)'

# Switch to a git branch by grepping for the branch name
function br() {
    git branch | rg $1 | head -n 1 | lc | xargs git checkout
}
