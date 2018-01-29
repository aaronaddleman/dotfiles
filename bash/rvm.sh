debug "2" "ENABLE_RVM=${ENABLE_RVM}"
if [ ${ENABLE_RVM} = "true" ]; then 
    if [ -d "$HOME/.rvm" ]; then
        debug "3" "loading rvm"
        # Load RVM into a shell session *as a function*
        [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
    else
        debug "3" "rvm dir missing: $HOME/.rvm"
    fi
fi

