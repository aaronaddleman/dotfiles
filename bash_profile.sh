# shellcheck source=/dev/null
[ -s ~/.profile ] && . ~/.profile

# find our script_path
pushd . > /dev/null
SCRIPT_PATH="${BASH_SOURCE[0]}";
if ([ -h "${SCRIPT_PATH}" ]) then
  while([ -h "${SCRIPT_PATH}" ]) do cd `dirname "$SCRIPT_PATH"`; SCRIPT_PATH=`readlink "${SCRIPT_PATH}"`; done
fi
cd `dirname ${SCRIPT_PATH}` > /dev/null
SCRIPT_PATH=`pwd`;
popd  > /dev/null

# load bash scripts
source $SCRIPT_PATH/bash/defaults.sh
source $SCRIPT_PATH/bash/path.sh
source $SCRIPT_PATH/bash/env.sh
source $SCRIPT_PATH/bash/completion.sh
source $SCRIPT_PATH/bash/aliases.sh
source $SCRIPT_PATH/bash/functions.sh
source $SCRIPT_PATH/bash/prompt.sh
source $SCRIPT_PATH/bash/rvm.sh

# if you have any extra stuff you want to load
if [ -d "$HOME/.bash.d" ]; then
    for s in $HOME/.bash.d/*
    do
      source $s
    done
fi
