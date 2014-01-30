# basic aliases
alias reloadalias="source ~/.bash_aliases"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias cdl="cd && clear"
alias cl=clear
alias cle=cl
alias clea=cl
alias cler=cl
alias cp="cp -ip"
alias d=colordiff
alias dr="colordiff -r"
alias drx="colordiff -r --exclude='.*'"
alias du="du -h --max-depth=1"
alias e="exit"
alias ex=e
alias exi=e
alias f="find"
alias fr="find / -path \"/mnt\" -prune -o -path \"/etc\" -prune -o -path \"/proc\" -prune -o -path \"/var\" -prune -o -path \"/sys\" -prune -o -path \"/root\" -prune -o -path \"/lost+found\" -prune -o -path \"/tmp/vmware-root\" -prune -o"
alias findroot=fr
alias fc="find . -maxdepth 1"
alias findcurrent=fc
alias g="git"
alias gr="grep -n"
alias gre=gr
alias h="history"
alias k="kill -9"
alias ll="ls -alh"
if [ `uname` = "Darwin" ]; then
  alias ls="ls -G"
elif [ `uname` = "Linux" ]; then
  alias ls="ls -F --color"
fi
alias l=ls
alias la="ls -A"
alias mv="mv -i"
alias p=pwd
alias rm="rm -i"
alias top="top -c"

alias m="mysql -u root"

# ssh
alias s="slogin -o ServerAliveInterval=60"
alias sa="ssh-add"

# system
alias reboot="sudo shutdown -r now"
alias halt="sudo shutdown -h now"
alias purgekernel="dpkg -l 'linux-[a-z]*-[0-9.]*'|grep ^i|cut -d' ' -f3|grep -v `uname -r|cut -d- -f1,2`|xargs sudo aptitude purge"
alias aptsafe="sudo aptitude update; sudo aptitude safe-upgrade"

# editor
alias v="vim -p"
alias vi=v
alias va="vim /etc/apache2"
alias vb="vim ~/.bash_aliases"
alias vg="vim ~/.gitconfig"
alias vh="vim /etc/hosts"
alias vr="LANG=C v -p app/assets/stylesheets app/assets/javascripts app/helpers app/views app/models app/controllers config db"
alias vs="vim ~/.ssh/config"
alias vv="vim ~/.vimrc"
alias sv="sudo -H vim"
alias svi=sv
alias svim=sv
alias vimconfigure="./configure --with-features=huge --enable-cscope --enable-multibyte --enable-hangulinput --enable-fontset --enable-largefile --enable-rubyinterp=yes --enable-luainterp=yes --disable-gui --disable-selinux --disable-netbeans --disable-gpm"
export EDITOR=vim
export BUNDLER_EDITOR=vim

# pager
export PAGER=lv
alias le=lv
alias les=le
alias less=le
alias lesss=le

# ruby
alias b=bundle
alias bu="bundle update"
alias sq="bundle exec sidekiq -C config/sidekiq.yml"
alias r=rails
#alias rake="spring rake"
#alias rspec="spring rspec"
alias gems="echo $RBENV_ROOT/versions/`ruby -v|cut -d ' ' -f 2|awk -F'p' '{print $1"-p"$2}'`/lib/ruby/gems/`ruby -v|cut -d ' ' -f 2|cut -d 'p' -f 1`/gems/"
alias gemupdate="gem update --system; gem pristine --all"
alias rbupdate="cd ~/.rbenv; git pull; cd plugins/ruby-build; git pull; cd; rbenv rehash"
alias rblocal="rbenv versions"
alias rbremote="echo '  remote'; rbenv install -l | grep '^  2\|^  1.9' | grep -v '\-dev\|\-preview\|\-rc\|1.9.1\|1.9.2'"
alias redisclear="redis-cli flushall; sudo service redis-server restart"

# mailcatcher
alias ip="LANG=C ifconfig|grep 'inet addr'|cut -d: -f2 |cut -d' ' -f1|grep -v 127.0.0.1"
alias mailcatcher="mailcatcher --http-ip `ip`"
export TRUSTED_IP=127.0.0.1

# basic environments
export MAKEOPTS="-j`grep -c "cpu cores" /proc/cpuinfo`"

# for Ctrl-Shift
stty -ixon -ixoff

# git
if [ -f ~/.gitrc ]; then
  . ~/.gitrc
fi
GIT_COMPLETION_PATH="/etc/bash_completion.d/git"
if [ -f $GIT_COMPLETION_PATH ]; then
  . $GIT_COMPLETION_PATH
  GIT_PS1_SHOWDIRTYSTATE=true # */+ for dirty
  GIT_PS1_SHOWSTASHSTATE=true # $ for stashes
  GIT_PS1_SHOWUNTRACKEDFILES=true # % for untracked
fi
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# tmux
TMUX_COMPLETION_PATH="./bash_completion_tmux.sh"
if [ -f $TMUX_COMPLETION_PATH ]; then
  source $TMUX_COMPLETION_PATH
fi

# local environments
alias vl="vim ~/.localenv"
alias reloadenv="source ~/.localenv"
if [ -f ~/.localenv ]; then
  . ~/.localenv
fi
