alias tf="terraform"
alias tg="terragrunt"

# grep for terraform targets to perform an action on
function tft() {
    terraform state list | rg $2 | awk '{print "'\''"$0"'\''"}' | awk '$0="-target="$0' | xargs -d '\n' -o -r terraform $1
}

# grep for terragrunt targets to perform an action on
function tgt() {
    terragrunt state list | rg $2 | awk '$0="-target="$0' | xargs -d '\n' -o -r terragrunt $1
}
