# file
alias cp="cp -ip"
alias cpf="cp --parents"
alias mv="mv -i"
alias rm="rm -i"
alias cx="chmod +x"

# pipe
alias xargs="xargs -n 256"

# diff
alias di=diff
alias dif=diff
alias difr="diff -r --exclude='.*'"
alias difrcr="diff -r --exclude='.*' --strip-trailing-cr"

# less
alias less="less -r"
alias le=less
alias les=less
alias lesss=less

# file path
alias cd="cd -P"
alias p=pwd
alias ...="../.."
alias ....="../../.."
alias .....="../../../.."
alias ......="../../../../.."

# ls
alias ls="ls -FX --color=auto"
alias l="ls -C"
alias la="ls -A"
alias ll="ls -alh"
alias l1="ls -a1"

# archive
alias tgz="tar cz --exclude-vcs"

# clear
alias cl=clear
alias cle=cl
alias clea=cl
alias cler=cl

# grep
MY_GREP_OPTIONS="--color=auto -I"
alias grep="grep $MY_GREP_OPTIONS"
alias fgrep="fgrep $MY_GREP_OPTIONS"
alias egrep="egrep $MY_GREP_OPTIONS"

alias gralias="alias |grep -i"
alias grenv="env |grep -i"
alias grps="ps aux |grep -i"
alias grhistory="history -E 1 |grep -i"
# ref: omz shortcut alt + /

# grep >= 2.5.2
function gr() { grep -nriI $1 . --exclude-dir=.svn --exclude-dir=.git --exclude-dir=log }
function gl() { grep -riIl $1 . --exclude-dir=.svn --exclude-dir=.git --exclude-dir=log }

# find
alias f="find . -iname"
alias fr="find / -path \"/mnt\" -prune -o -path \"/etc\" -prune -o -path \"/proc\" -prune -o -path \"/var\" -prune -o -path \"/sys\" -prune -o -path \"/root\" -prune -o -path \"/lost+found\" -prune -o -path \"/tmp/vmware-root\" -prune -o"
alias findroot=fr
alias fc="find . -maxdepth 1"
alias findcurrent=fc
alias links="find . -type l"

# nkf
# -w=overwrite
alias nkf="nkf -w --no-best-fit-chars"

