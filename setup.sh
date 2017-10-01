#!/bin/sh
for f in `cat <<_END_OF_FILES_
ctags
env
gemrc
gitconfig
gitignore
irbrc
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
