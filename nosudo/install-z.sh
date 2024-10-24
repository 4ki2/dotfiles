#!/bin/bash

set -e

cd ~/.

export CXXFLAGS=" -fPIC" CFLAGS=" -fPIC" CPPFLAGS="-I${HOME}/include" LDFLAGS="-L${HOME}/lib"
wget https://ftp.gnu.org/pub/gnu/ncurses/ncurses-6.5.tar.gz
tar -xzvf ncurses-6.5.tar.gz
cd ncurses-6.5
./configure --prefix=$HOME --enable-shared
make
make install
cd .. && rm ncurses-6.5.tar.gz && rm -r ncurses-6.5

# install zsh itself
wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
mkdir zsh && unxz zsh.tar.xz && tar -xvf zsh.tar -C zsh --strip-components 1
cd zsh
./configure --prefix=$HOME
make
make install
cd .. && rm zsh.tar && rm -r zsh

exit;
