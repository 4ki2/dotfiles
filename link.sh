#!/bin/sh
for f in `cat <<_END_OF_DOT_FILES_
aliases
env
gemrc
gitconfig
gitignore
irbrc
rspec
tmux.conf
vimrc
zshrc
_END_OF_DOT_FILES_`; do
  rm -i ~/.$f
  ln -s $PWD/$f ~/.$f
done
exit
