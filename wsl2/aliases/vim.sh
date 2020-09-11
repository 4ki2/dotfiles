alias -s txt=vim
alias -s conf=vim
alias -s csv=vim
alias -s rdoc=vim
alias -s erb=vim
alias -s slim=vim
alias -s yml=vim

alias vim="vim -p"
alias v=vim
alias vi=vim
alias ve="vim ~/.env"
alias vg="vim ~/.gitconfig"
alias vgi="vim ~/.gitignore"
alias vn="vim ~/.netrc"
alias vs="vim ~/.secrets"
alias vc="vim ~/.ssh/config"
alias va="vim $(readlink ~/.aliases)"
alias vv="vim $(readlink ~/.vimrc)"
alias vz="vim $(readlink ~/.zshrc)"
alias vh="sudo vim /etc/hosts"

alias vd="vimdiff"

vr() { vim -p $(grep -Rl $1) }
vri() { vim -p $(grep -Ril $1) }

alias less=$GITHUB_REPOS_PATH/vim/runtime/macros/less.sh

alias configurevim="./configure \
--disable-darwin \
--disable-smack  \
--disable-selinux  \
--disable-xsmp  \
--enable-python3interp=yes  \
--enable-luainterp=yes  \
--enable-cscope  \
--disable-netbeans  \
--enable-multibyte  \
--enable-fontset  \
--enable-gui=no \
--with-features=huge"

