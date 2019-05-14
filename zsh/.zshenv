# this file is always sourced by zsh
#
# things to put here:
#
# PATH, EDITOR, PAGER, ZDOTDIR, etc...

PATH=$HOME/.local/bin:$HOME/.pyenv/bin:$PATH
EDITOR=vim
CDPATH=$HOME/src

ADSK_FULLNAME="Aaron Addleman"
source $HOME/src/libsh/libsh.sh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
