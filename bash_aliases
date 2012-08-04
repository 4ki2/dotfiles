# some more aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias b='brew'
alias cdl='cd && clear'
alias cl='clear'
alias cle=cl
alias clea=cl
alias cler=cl
alias cp='cp -i'
alias d='colordiff'
alias du='du -h --max-depth=1'
alias e='exit'
alias ex=e
alias f='find'
alias g='git'
alias gems='cd /usr/local/rvm/gems/ruby-1.9.3-p194/gems'
alias h='history'
alias k='kill -9'
alias l='ls'
alias la='ls -A'
alias le='/usr/share/vim/vim73/macros/less.sh'
alias les=le
alias less=le
alias lesss=le
alias ll='ls -al'
alias ls='ls -G'
alias m='mysql -u root'
alias mv='mv -i'
alias p='pwd'
alias r='rails'
alias rm='rm -i'
alias rmf='rm -rf'
alias s='slogin -o ServerAliveInterval=60'
alias sa='ssh-add'
alias v='vim'
alias vi=v

if [ -f ~/.gitrc ]; then
    . ~/.gitrc
fi

