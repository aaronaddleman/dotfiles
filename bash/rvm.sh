debug "2" "ENABLE_RVM=${ENABLE_RVM}"
if [ ${ENABLE_RVM} = "true" ]; then 
  # Load RVM into a shell session *as a function*
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi

