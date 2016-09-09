alias g="git"
alias cdg="cd $GITHUB_REPOS_PATH"
alias gcm="g config user.email"
alias gcn="g config user.name"
if [ -f ~/.gitrc ]; then
  . ~/.gitrc
fi
git-last-editors() {
  if [ -z "$1" ]; then
    echo "usage: git-list-editors path"
    return
  fi
  for f in `ls -1 $1`; do
    printf "$f: "
    git blame $f|head -n1
  done
}
