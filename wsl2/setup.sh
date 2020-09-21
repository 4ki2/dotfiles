#!/bin/sh
for f in `cat <<_END_OF_FILES_
env
gitconfig
gitignore
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

rm -f ~/.ssh/config
ln -s $PWD/ssh_config ~/.ssh/config

if [ ! -h ~/.oh-my-zsh ]; then
  cd ../submodules/oh-my-zsh
  ln -s $(pwd) ~/.oh-my-zsh
  cd custom/plugins
  ln -s $(readlink -f ../../../zsh-autosuggestions)
  cd -
  cd custom/themes
  ln -s $(readlink -f ../../../bullet-train.zsh/bullet-train.zsh-theme)
fi

exit;

