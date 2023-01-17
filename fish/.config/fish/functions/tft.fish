function tft --description "grep for terraform targets to perform an action on"
    terraform state list | rg $argv[2] | awk '{print "'\''"$0"'\''"}' | awk '$0="-target="$0' | xargs -o -r terraform $argv[1]
end
