# files
alias cp="cp -ip"
alias cpf="cp --parents" # full path copy
alias mv="mv -i"
alias rm="rm -i"

# pipe
alias xargs="xargs -n 256"

# diff
alias di=vimdiff
alias dif=vimdiff
alias diff=vimdiff
alias dr="diff -r --exclude='.*'"
alias drcr="diff -r --exclude='.*' --strip-trailing-cr"

# less
alias less="less -r"
alias le=less
alias les=less
alias lesss=less

# directories
alias p=pwd
alias ...="../.."
alias ....="../../.."
alias .....="../../../.."
alias ......="../../../../.."

# ls
alias ls="ls -F --color=auto"
alias l="ls -C"
alias la="ls -A"
alias ll="ls -alh"
alias l1="ls -a1"

# archive
alias tgz="tar cz --exclude-vcs"

# history
alias h=history
alias ha="history -E 1"
alias grh="ha|grep"

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

alias gralias="alias|grep -i"
alias grenv="env|grep -i"
alias grps="ps aux|grep -i"

# # grep >= 2.5.2 !oh-my-zsh pluin git のエイリアスは使ってないがコンフリクトするので除外しておく
# function gr() { grep -nriI $1 . --exclude-dir=.svn --exclude-dir=.git --exclude-dir=log --exclude=tags }
# function gl() { grep -riIl $1 . --exclude-dir=.svn --exclude-dir=.git --exclude-dir=log|uniq --exclude=tags }

