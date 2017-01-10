# files
alias cp="cp -ip"
alias cpf="cp --parents" # full path copy
alias mv="mv -i"
alias rm="rm -i"

# pipe
alias xargs="xargs -n 256"

# diff
alias d="colordiff -Z"
alias dr="colordiff -r"
alias drx="colordiff -r --exclude='.*'"

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

# monitor
alias du="du -h --max-depth=1"
alias time-mem="/usr/bin/time -f '%Us %M KB'"

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
