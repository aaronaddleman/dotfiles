# set true/false to print debug statements
DEBUG="false"

# shellcheck source=/dev/null
#[ -s ~/.profile ] && . ~/.profile

# find our script_path
pushd . > /dev/null
SCRIPT_PATH="${BASH_SOURCE[0]}";
if ([ -h "${SCRIPT_PATH}" ]) then
  while([ -h "${SCRIPT_PATH}" ]) do cd `dirname "$SCRIPT_PATH"`; SCRIPT_PATH=`readlink "${SCRIPT_PATH}"`; done
fi
cd `dirname ${SCRIPT_PATH}` > /dev/null
SCRIPT_PATH=`pwd`;
popd  > /dev/null

# print echo if debug is true
debug() {
    LEVEL="$1"
    MESSAGE="$2"
    CHAR="."

    LEADER=$(printf '%*s' "$LEVEL" | tr ' ' "$CHAR")

    if [ "$DEBUG" = "true" ]; then
        echo "$LEADER $MESSAGE"
    fi
}

# load bash scripts
for a in $SCRIPT_PATH/bash/*sh
do
  debug "1" "loading $a ($(date))"
  source $a
done

# if you have any extra stuff you want to load

if [ -d "$HOME/.bash.d" ]; then
    for s in $HOME/.bash.d/*
    do
      source $s
    done
fi
