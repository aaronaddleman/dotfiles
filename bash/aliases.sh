alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'
alias redot='cd ~/.dotfiles && gpp && rake install; cd -'

# remember..
alias vaultssh?="echo 'vaultssh .blahlbah'"
alias awssg?="echo 'aws ec2 describe-securitygroups' ..."
alias awsami?="echo 'aws ec2 descibe-images --filter \"Name=name,Values=thingYourLookingFor\"'"

# appearance
alias grep='grep --color=auto'
export GREP_COLOR='1;33'

# colored LS
export LSCOLORS='Gxfxcxdxdxegedabagacad'

