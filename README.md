# dotfiles

## Requirement
- zsh
- rbenv
- direnv
- dircolors
- pmtools (centos)
- gnubin (darwin)

and so on.

## Installation

1. Check out
 ```shell
$ git clone git@github.com:4ki2/dotfiles.git
$ cd dotfiles
$ git submodule init
$ git submodule update
```

2. Do like this
 ```shell
#!/bin/sh
for f in `cat <<_END_OF_FILES_
ctags
env
gemrc
gitconfig
gitignore
irbrc
rspec
tmux.conf
vimrc
zshrc
_END_OF_FILES_`; do
  rm -f ~/.$f
  ln -s $PWD/$f ~/.$f
done
for d in `cat <<_END_OF_DIRS_
aliases
vim
zsh
_END_OF_DIRS_`; do
  rm -rf ~/.$d
  ln -s $PWD/$d ~/.$d
done
exit
```

3. *(optional)* As you like
 ```shell
cd zsh/repos/hub
./script/build -o /usr/local/bin/hub
```
