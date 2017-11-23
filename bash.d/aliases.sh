#ls
alias ls='ls -Fh'
alias la='ls -A'

# Git
alias g='git'
alias gst='git st'
alias gb='git branch'
alias gba='git branch -a'
complete -F _git g

# Work stuff
alias activate-proxy='source ~/bin/activate_proxy.sh'
alias deactivate-proxy='source ~/bin/deactivate_proxy.sh'

function activate-aws() {
   export AWS_ACCESS_KEY_ID=$(aws configure --profile=$1 get aws_access_key_id)
   export AWS_SECRET_ACCESS_KEY=$(aws configure --profile=$1 get aws_secret_access_key)
}

function _list_aws_profiles() {
   local cur=${COMP_WORDS[COMP_CWORD]}
   # default aws profile is skipped
   aws_profiles=$(cat ~/.aws/config | grep profile | cut -d ' ' -f 2 | sed 's/]//')
   COMPREPLY=( $(compgen -W $aws_profiles -- $cur) )
}

complete -F _list_aws_profiles activate-aws

# docker
alias dattach='docker attach --sig-proxy=false'
alias d='docker'
complete -F _docker d

alias jqless="jq -C . | less -R"

alias k='kubectl "--context=${KUBECTL_CONTEXT:-$(kubectl config current-context)}" ${KUBECTL_NAMESPACE/[[:alnum:]-]*/--namespace=${KUBECTL_NAMESPACE}}'
complete -F __start_kubectl k
