#
# This sets paths available for cd without being in the dir
#
# Eg:
#
# if [ -d $HOME/src ]; then
#     export CDPATH=$CDPATH:$HOME/src
# fi

# would allow you to cd into any directroy that exists in
# the $HOME/src direct.

# Additionally, if you are in a directory that happens to
# share the same name as a directory in $HOME/src it will
# ignore the path in $HOME/src and use the current dir
# your in.
export CDPATH="$HOME/src"
