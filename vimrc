if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim'))

"### Shougo
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/unite.vim')

"# completion
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('ujihisa/neco-look')

"# shell
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/vimshell')

"# file-explorer
call dein#add('Shougo/vimfiler')

"### tpope
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-rails')

"### vim-scripts repos
" call dein#add('sudo.vim')
" call dein#add('ruby-matchit')
" call dein#add('vim-scripts/AnsiEsc.vim')

"### filer/search
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('flazz/vim-colorschemes')
call dein#add('majutsushi/tagbar')

"### editing
call dein#add('terryma/vim-multiple-cursors')
call dein#add('tomtom/tcomment_vim')
call dein#add('soramugi/auto-ctags.vim')
call dein#add('ain/vim-capistrano')

"### syntax
call dein#add('vim-ruby/vim-ruby')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('kchmck/vim-coffee-script')
call dein#add('slim-template/vim-slim')
call dein#add('othree/html5.vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('AndrewRadev/switch.vim')
call dein#add('yosssi/vim-ace')
call dein#add('fatih/vim-go')
call dein#add('sunaku/vim-ruby-minitest')

call dein#end()

if dein#check_install()
  call dein#install()
endif

"# encoding
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,euc-jp,sjis,cp932,cp20932
set fileformats=unix,dos,mac

"# cursor and scroll
set nostartofline
set scrolloff=10

"# line number
set number
set numberwidth=4

"# character seek
set smartcase
set ignorecase
set hlsearch

"# backend option
set shortmess+=I
set nobackup
set noswapfile
set hidden
set helplang=ja
set history=100

"# backspace
set backspace=indent,eol,start

"# brackets
set showmatch

"### ime
"# must off when insert mode end
set imdisable
imap <silent><ESC> <ESC>:set iminsert=0<CR>
"# must off when boot
set iminsert=0 imsearch=0
"# must off on command mode
set noimcmdline

runtime! vim.d/*.vim
