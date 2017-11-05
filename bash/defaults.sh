# If not running interactively, don't do anything!
[[ $- != *i* ]] && return

# Enable history appending instead of overwriting.
shopt -s histappend

# enable dircolors
#
# to use this, you must install coreutils
if hash gls 2>/dev/null; then
  #eval $(gdircolors $SCRIPTS_DIR/dircolors/dircolors.ansi-dark)
  export set LSCOLORS="gxfxbEaEBxxEhEhBaDaCaD"
  alias ls='gls --color=auto'
fi

#if your running gtk and want to ignore errors
export NO_AT_BRIDGE=1
