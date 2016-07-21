#!/bin/sh
rm -rf vim_syntax
mkdir vim_syntax
cd vim_syntax
wget --no-check-certificate https://raw.githubusercontent.com/nginx/nginx/master/contrib/vim/syntax/nginx.vim
cd ..
rm -rf ~/.vim/syntax
ln -s $PWD/vim_syntax ~/.vim/syntax
exit
