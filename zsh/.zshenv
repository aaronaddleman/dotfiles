# this file is always sourced by zsh
#
# things to put here:
#
# PATH, EDITOR, PAGER, ZDOTDIR, etc...

PATH=$HOME/.local/bin:$HOME/.pyenv/bin:$HOME/.tfenv/bin:$PATH
EDITOR=vim
CDPATH=$HOME/src

# load libsh
source $HOME/src/libsh/libsh.sh

# lpass things
source $HOME/src/adsk-dotfiles/lpass.sh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
dbus-update-activation-environment --systemd DISPLAY

[ -d $HOME/.chefdk ] && export PATH=$HOME/.chefdk/gem/ruby/2.5.0/bin:$PATH

eval "$(rbenv init -)"

