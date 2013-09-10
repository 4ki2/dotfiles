# some more aliases
alias reloadalias="source ~/.bash_aliases"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias b="bundle"
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
alias exi=e
alias f="find"
alias fr="find / -path \"/mnt\" -prune -o -path \"/etc\" -prune -o -path \"/proc\" -prune -o -path \"/var\" -prune -o -path \"/sys\" -prune -o -path \"/root\" -prune -o -path \"/lost+found\" -prune -o -path \"/tmp/vmware-root\" -prune -o"
alias findroot=fr
alias g="git"
alias gre="grep -n"
alias gr=gre
alias h="history"
alias k="kill -9"
alias ll="ls -al"
if [ `uname` = "Darwin" ]; then
  alias ls="ls -G"
elif [ `uname` = "Linux" ]; then
  alias ls="ls -F --color"
fi
alias l="ls"
alias la="ls -A"
alias mv="mv -i"
alias p="pwd"
alias r="rails"
#alias rake="spring rake"
#alias rspec="spring rspec"
alias rm="rm -i"
alias top="top -c"

# for ssh
alias s="slogin -o ServerAliveInterval=60"
alias sa="ssh-add"

alias reboot="sudo shutdown -r now"
alias halt="sudo shutdown -h now"

alias v="vim"
alias vi=v
alias va="vim /etc/apache2"
alias vb="vim ~/.bash_aliases"
alias vg="vim ~/.gitconfig"
alias vh="vim /etc/hosts"
alias vl="vim ~/.localenv"
alias vs="vim ~/.ssh/config"
alias vv="vim ~/.vimrc"
alias sv="sudo -H vim"
alias svi=sv
alias svim=sv
export EDITOR="vim"
export BUNDLER_EDITOR="vim"

alias le="/usr/share/vim/vim73/macros/less.sh"
alias les=le
alias less=le
alias lesss=le

alias gems="gem list"

alias ip="LANG=C ifconfig|grep 'inet addr'|cut -d: -f2 |cut -d' ' -f1|grep -v 127.0.0.1"
alias mailcatcher="mailcatcher --http-ip `ip`"

alias rbenvupdate="cd ~/.rbenv; git pull; cd plugins/ruby-build; git pull; cd; rbenv rehash"

# basic environments
export MAKEOPTS="-j`grep -c "cpu cores" /proc/cpuinfo`"

# for Ctrl-Shift
stty -ixon -ixoff

# for git
if [ -f ~/.gitrc ]; then
    . ~/.gitrc
fi
if [ -f ~/.localenv ]; then
    . ~/.localenv
fi

GIT_COMPLETION_PATH="/etc/bash_completion.d/git"
if [ -f $GIT_COMPLETION_PATH ]; then
  . $GIT_COMPLETION_PATH
  GIT_PS1_SHOWDIRTYSTATE=true # */+ for dirty
  GIT_PS1_SHOWSTASHSTATE=true # $ for stashes
  GIT_PS1_SHOWUNTRACKEDFILES=true # % for untracked
fi
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

TMUX_COMPLETION_PATH="./bash_completion_tmux.sh"
if [ -f $TMUX_COMPLETION_PATH ]; then
  source $TMUX_COMPLETION_PATH
fi
