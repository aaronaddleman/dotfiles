# shellcheck source=/dev/null
[ -s ~/.profile ] && . ~/.profile


# load defaults
SOURCE="${BASH_SOURCE[0]}"
MYBASHDIR=$(dirname "$SOURCE")

source $MYBASHDIR/main/defaults.sh

source $MYBASHDIR/bash/path.sh
source $MYBASHDIR/bash/env.sh
source $MYBASHDIR/bash/completion.sh
source $MYBASHDIR/bash/aliases.sh
source $MYBASHDIR/bash/functions.sh
source $MYBASHDIR/bash/prompt.sh

if [ -d "$HOME/.bash.d" ]; then
  source $HOME/.bash.d/*sh
fi

