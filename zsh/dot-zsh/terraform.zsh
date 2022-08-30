alias tf="terraform"
alias tg="terragrunt"
alias tfu="terraenv terraform use"

# grep for targets for terraform in the state
function tft() {
    terraform state list | rg $2 | awk '{print "'\''"$0"'\''"}' | awk '$0="-target="$0' | xargs -d '\n' -o -r terraform $1
}

# grep for targets for terragrunt in the state
function tgt() {
    terragrunt state list | rg $2 | awk '$0="-target="$0' | xargs -d '\n' -o -r terragrunt $1
}
