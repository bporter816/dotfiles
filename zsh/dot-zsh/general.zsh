eval "$(pyenv init --path)"

# Kubernetes
alias k="kubectl"

# Terraform
alias tf="terraform"
alias tg="terragrunt"
alias tfu="terraenv terraform use"

# grep for targets for terraform
function tft() {
    terraform state list | grep $2 | awk '{print "'\''"$0"'\''"}' | awk '$0="-target="$0' | xargs -d'\n' -o -r terraform $1
}

# grep for targets for terragrunt
function tgt() {
    terragrunt state list | grep $2 | awk '$0="-target="$0' | xargs -d'\n' -o -r terragrunt $1
}

# Copy a single file to multiple destinations
function cpm() {
    echo $@[2,-1] | xargs -n 1 cp -v $@[1]
}

# General
export EDITOR="vim"
