alias g="git"
alias cdg="cd $GITHUB_REPOS_PATH"
alias gcm="g config user.email"
alias gcn="g config user.name"
if [ -f ~/.gitrc ]; then
  . ~/.gitrc
fi
function git-last-editors() {
  if [ -z "$1" ]; then
    echo "USAGE: git-list-editors <FILE PATH>"
    return
  fi
  for f in `ls -1 $1`; do
    printf "$f: "
    git blame $f|head -n1
  done
}
alias ge=git-last-editors
# remove all dangling commits
alias gdd="g reflog expire --expire=now --all; g gc --prune=now"

# remnove ghostscript
alias gs="git status"

