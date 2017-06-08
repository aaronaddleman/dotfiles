[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# load nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# load pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

# set vault
export HCVSWITCH_PATH="${HOME}/src/hcvswitch"
export HCVSWITCH_CONFIG="${HOME}/.hcv.yml"
. "${HCVSWITCH_PATH}/init.sh"

# set your path
export PATH="$PYENV_ROOT/bin:$PATH"

# CHEF_USER
export set CHEF_USER=$USER

# ADSK USER
export set ADSK_USERNAME=$USER

# aliases
alias tf='terraform'

# completions
#complete -C '/Users/addlema/.pyenv/shims/aws_completer' aws

# Path to the bash it configuration
export BASH_IT="/Users/addlema/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='minimal'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
#source $BASH_IT/bash_it.sh

export HISTTIMEFORMAT="%F %R%z "
export PATH="$HOME/.tfenv/bin:$PATH"
