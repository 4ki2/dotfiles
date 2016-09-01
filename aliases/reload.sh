alias reloadrc=". ~/.zshrc"
alias reloadenv=". ~/.env"
alias reloadsecret=". ~/.secrets"
reloadalias() {
  for a in `ls -1 ~/.aliases/`; do
    . ~/.aliases/$a
  done
}
