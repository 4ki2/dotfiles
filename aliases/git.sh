alias g="git"
alias cdg="cd $GITHUB_REPOS_PATH"
alias gcm="g config user.email"
alias gcn="g config user.name"
if [ -f ~/.gitrc ]; then
  . ~/.gitrc
fi

