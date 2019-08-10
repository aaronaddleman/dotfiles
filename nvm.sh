NVM_PATH=/usr/share/nvm

[ -d $NVM_PATH ]
[ -f $NVM_PATH/init.nvm.sh ] && source $NVM_PATH/init-nvm.sh

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source $NVM_PATH/nvm.sh
source $NVM_PATH/bash_completion
source $NVM_PATH/install-nvm-exec
