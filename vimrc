set nocompatible  " be iMproved
set mouse=a       "enable mouse use

filetype off               " required!
filetype plugin indent off " required!
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim' " required! 
NeoBundle 'Shougo/vimproc'       " recommended to install
"# after install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimshell'
" NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
"# vim-scripts repos
NeoBundle 'L9'
" NeoBundle 'simple-pairs'
NeoBundle 'sudo.vim'
" NeoBundle 'FuzzyFinder'
NeoBundle 'rails.vim'
NeoBundle 'railscasts'
"# original repos on github(my plugins)
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'majutsushi/tagbar'
"NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'ornicar/vim-mru'
NeoBundle 'othree/eregex.vim'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'kakkyz81/evervim'
"# non github repos
NeoBundle 'git://git.wincent.com/command-t.git'
filetype plugin indent on " required!

"# NERDTree shortcats
nmap <silent> <C-g>      :NERDTreeToggle<CR>
vmap <silent> <C-g> <Esc>:NERDTreeToggle<CR>
omap <silent> <C-g>      :NERDTreeToggle<CR>
imap <silent> <C-g> <Esc>:NERDTreeToggle<CR>
cmap <silent> <C-g> <C-u>:NERDTreeToggle<CR>

"# NerdTree options
autocmd vimenter * if !argc() | NERDTree | endif " autoboot unless arguments
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " autoclose
let g:NERDTreeMinimalUI=1 " simple menu
let g:NERDTreeDirArrows=0 " file name prefixed
let g:NERDTreeMouseMode=2 " mouse control enabled

"# NERD_commenter options
"let g:NERDCreateDefaultMappings=0 " disabled key mappings
let g:NERDSpaceDelims=1 " into space
" nmap <silent> <C-_> <Plug>NERDCommenterToggle
" vmap <silent> <C-_> <Plug>NERDCommenterToggle

"# neocomplcache options
let g:neocomplcache_enable_at_startup=1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

"# tagbar options
nmap <C-l> :TagbarToggle<CR>

"# evervim options
let g:evervim_devtoken = 'S=s243:U=1fab4a3:E=1422348b21f:C=13acb978620:P=1cd:A=en-devtoken:H=c294e50a5717a9f80c99b0ecd751ceea'

"# my options
syntax on

set modelines=0
set clipboard=unnamed,autoselect
"# require xsel
vmap <C-c> :w !xsel -ib<CR><CR>

set nu
set hidden
set wildmenu
set showcmd
set hlsearch
set backspace=indent,eol,start
set nostartofline

set autoindent
"set paste " if this option enabled neocomplcache broken
set ignorecase
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartcase
set smartindent
set smarttab
set cindent
set expandtab
set showtabline=2

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
highlight NonText ctermfg=DarkGray
highlight SpecialKey ctermfg=DarkGray
highlight link ZenkakuSpace Error
match ZenkakuSpace /　/

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,sjis,cp932,euc-jp,cp20932
set fileformats=unix,dos,mac

let tagbar_singleclick=1
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set laststatus=2

set showmatch

"# multi lines indent in visual mode
vnoremap <silent> > >gv
vnoremap <silent> < <gv

"# toggle color in vi mode
autocmd InsertEnter * highlight StatusLine ctermfg=White ctermbg=DarkBlue cterm=none
autocmd InsertLeave * highlight StatusLine ctermfg=White ctermbg=Blue cterm=none

"# my commands
command qq tabonly "close other tabs
