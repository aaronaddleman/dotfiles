git_set_commit_template() {
    if [ -f $HOME/src/dotfiles/git/commit-msg-template ]; then
        git config --global commit.template $HOME/src/dotfiles/git/commit-msg-template
    fi
}

git_public() {
    git config user.email "aaronaddleman@gmail.com"
}
