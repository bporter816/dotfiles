function tgt --description "grep for terragrunt targets to perform an action on"
    terragrunt state list | rg $argv[2] | awk '$0="-target="$0' | xargs -d '\n' -o -r terragrunt $argv[1]
end
