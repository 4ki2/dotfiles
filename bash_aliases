# some more aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias cdl="cd && clear"
alias cl="clear"
alias cle=cl
alias clea=cl
alias cler=cl
alias cp="cp -i"
alias d="colordiff"
alias dr="colordiff -r"
alias drx="colordiff -r --exclude='.*'"
alias du="du -h --max-depth=1"
alias e="exit"
alias ex=e
alias f="find"
alias g="git"
alias gems="cd $GEM_HOME/gems"
alias h="history"
alias k="kill -9"
alias ll="ls -al"
if [ `uname` = "Darwin" ]; then
  alias b="brew"
  alias ls="ls -G"
elif [ `uname` = "Linux" ]; then
  alias ls="ls -F --color"
fi
alias l="ls"
alias la="ls -A"
alias m="mysql -u root"
alias mv="mv -i"
alias p="pwd"
alias r="rails"
alias rm="rm -i"
alias s="slogin -o ServerAliveInterval=60"
alias sa="ssh-add"
alias top="top -c"

# for vim
stty -ixon -ixoff
alias v="vim"
alias vi=v
alias vv="vim ~/.vimrc"
alias le="/usr/share/vim/vim73/macros/less.sh"
alias les=le
alias less=le
alias lesss=le

# make options
export MAKEOPTS="-j`grep -c "cpu cores" /proc/cpuinfo`"

if [ -f ~/.gitrc ]; then
    . ~/.gitrc
fi
