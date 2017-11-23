if [ -f ~/.spacemacs ]; then
  rm ~/.spacemacs
fi

ln -s $HOME/src/dotfiles/spacemacs $HOME/.spacemacs
