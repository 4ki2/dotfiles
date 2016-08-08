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

sudo aptitude -y install build-essential automake golang-go language-pack-ja libevent-dev ncurses-dev lua5.2 liblua5.2-dev libssl-dev libxml2-dev libxslt-dev libffi-dev zsh colordiff
sudo update-locale LANG=ja_JP.UTF-8
sudo timedatectl set-timezone Asia/Tokyo
sudo update-alternatives --remove editor /usr/bin/vim.basic
sudo update-alternatives --remove editor /usr/bin/vim.tiny
sudo aptitude remove vim vim-tiny vim-common ubuntu-minimal nano tmux

chsh -s /bin/zsh
source aliases
cd ..

git clone --depth 1 https://github.com/vim-jp/vim.git
cd vim
configurevim
make
sudo make install
sudo updatedb
sudo update-alternatives --install /usr/bin/editor editor `which vim` 100
sudo update-alternatives --config editor
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
vim +:NeoBundleInstall +:q
cd ..

git clone https://github.com/tmux/tmux.git
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
mkdir -p rbenv/plugins; cd rbenv/plugins
git clone --depth 1 https://github.com/sstephenson/ruby-build.git

sudo login -f vagrant
