# this file is basically the same as .zlogin but, its sourced before .zshrc.
# its meant to be an alternative to .zlogin for the ksh fans

#Set ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE to an integer value to disable autosuggestion for large buffers. The default is unset, which means that autosuggestion will be tried for any buffer size. Recommended value is 20. This can be useful when pasting large amount of text in the terminal, to avoid triggering autosuggestion for strings that are too long.
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

#Set ZSH_AUTOSUGGEST_HISTORY_IGNORE to a glob pattern to prevent offering suggestions for history entries that match the pattern. For example, set it to "cd *" to never suggest any cd commands from history. Or set to "?(#c50,)" to never suggest anything 50 characters or longer.
ZSH_AUTSUGGEST_HISTORY_IGNORE="cd *"
