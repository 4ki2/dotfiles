MY_GREP_OPTIONS="--color=auto -I"
alias grep="grep $MY_GREP_OPTIONS"
alias fgrep="fgrep $MY_GREP_OPTIONS"
alias egrep="egrep $MY_GREP_OPTIONS"

alias gralias="alias|grep -i"
alias grenv="env|grep -i"
alias grps="ps aux|grep -i"

case $CURRENT_OS in

  Ubuntu)
    # grep (>= 2.5.2)
    gr() { grep -nriI $1 . --exclude-dir=.svn --exclude-dir=.git --exclude-dir=log --exclude=tags}
    gl() { grep -riIl $1 . --exclude-dir=.svn --exclude-dir=.git --exclude-dir=log|uniq --exclude=tags }
    ;;

  *)
    # grep (< 2.5.2)
    gr() { find . -type d \( -name \.git -o -name \.git -o -name log \) -prune -o -exec grep --color=auto -niIH $1 {} \;}
    gl() { grep -riIl $1 .|grep -v /.svn/|grep -v /.git/|grep -v /log\//|uniq }
    ;;

esac
