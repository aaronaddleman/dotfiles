
ENABLE_RVM=true

if [ ! -z ${ENABLE_RVM} ]; then
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi

