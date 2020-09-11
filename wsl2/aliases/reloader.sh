alias reloadrc=". ~/.zshrc"
alias rz=reloadrc
alias reloadenv=". ~/.env"
alias re=reloadenv
alias reloadsecret=". ~/.secrets"
alias rs=reloadsecret
function reloadalias() {
  for a in `ls -1 ~/.aliases/`; do
    . ~/.aliases/$a
  done
}
alias ra=reloadalias

