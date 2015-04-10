#!/bin/sh
# [201504] ubuntu1404
ln -s $PWD/aliases ~/.aliases
ln -s $PWD/env ~/.env
ln -s $PWD/gemrc ~/.gemrc
ln -s $PWD/gitconfig ~/.gitconfig
ln -s $PWD/gitignore ~/.gitignore
ln -s $PWD/irbrc ~/.irbrc
ln -s $PWD/rspec ~/.rspec
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/zshrc ~/.zshrc

sudo aptitude install build-essential automake golang language-pack-ja libevent-dev ncurses-dev lua5.2 liblua5.2-dev libssl-dev libxml2-dev libxslt-dev libffi-dev zsh colordiff
sudo update-locale LANG=ja_JP.UTF-8
sudo update-alternatives --remove editor /usr/bin/vim.basic
sudo update-alternatives --remove editor /usr/bin/vim.tiny
sudo aptitude remove vim vim-tiny vim-common ubuntu-minimal tmux

chsh -s /bin/zsh
source aliase
cd ..

git clone --depth 1 https://github.com/b4winckler/vim.git
cd vim
configurevim
make
sudo make install
sudo updatedb
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
sudo update-alternatives --config editor
cd ..

git clone --depth 1 https://github.com/ThomasAdam/tmux.git
cd tmux
configuretmux
make
sudo make install
cd ..

git clone --depth 1 https://github.com/zimbatm/direnv.git
cd direnv
sudo make install
cd ..

git clone --depth 1 https://github.com/sstephenson/rbenv.git
ln -s $PWD/rbenv ~/.rbenv
mkdir -p rbenv/plugins; cd $_
git clone --depth 1 https://github.com/sstephenson/ruby-build.git

sudo login -f vagrant
