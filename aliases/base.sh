# files
alias cp="cp -ip"
alias cpf="cp --parents" # full path copy
alias mv="mv -i"
alias rm="rm -i"

# pipe
alias xargs="xargs -n 256"

# diff
# alias d=colordiff
# alias dr="colordiff -r"
# alias drx="colordiff -r --exclude='.*'"
# alias drcr="colordiff -r --exclude='.*' --strip-trailing-cr"
alias d=diff
alias d="diff -r"
alias d="diff -r --exclude='.*'"
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

# mount
resize_ram() {
  if [ -z "$1" ]; then
    echo "USAGE: resize_ram <SIZE>"
    return
  fi
  mount -o remount,size=$1 /dev/shm # 90%とか
  df -h |grep /dev/shm
}
