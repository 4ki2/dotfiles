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
NeoBundle 'Shougo/unite.vim'
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
NeoBundle 'kakkyz81/evervim' " for evernote
"# non github repos
NeoBundle 'git://git.wincent.com/command-t.git'
filetype plugin indent on " required!

"# NERDTree shortcats
nnoremap <silent> <C-g>      :NERDTreeToggle<CR>
vnoremap <silent> <C-g> <Esc>:NERDTreeToggle<CR>
onoremap <silent> <C-g>      :NERDTreeToggle<CR>
inoremap <silent> <C-g> <Esc>:NERDTreeToggle<CR>
cnoremap <silent> <C-g> <C-u>:NERDTreeToggle<CR>

"# NerdTree options
"autocmd vimenter * if !argc() | NERDTree | endif " autoboot unless arguments
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " autoclose
let g:NERDTreeMinimalUI=1 " simple menu
let g:NERDTreeDirArrows=0 " file name prefixed
let g:NERDTreeMouseMode=2 " mouse control enabled

"# NERD_commenter options
"let g:NERDCreateDefaultMappings=0 " disabled key mappings
let g:NERDSpaceDelims=1
" nmap <silent> <C-_> <Plug>NERDCommenterToggle
" vmap <silent> <C-_> <Plug>NERDCommenterToggle

"# vimshell keymap
nnoremap <silent> <C-x> :VimShellTab<CR>

"# unite.vim keymap
nnoremap <silent> <C-h> :Unite file_mru<CR>
nnoremap <silent> <C-y> :Unite -buffer-name=register register<CR>

"# neocomplcache options
let g:neocomplcache_enable_at_startup=1
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_rails=1

"# tagbar options
nnoremap <silent> <C-l> :TagbarToggle<CR>
let g:tagbar_singleclick=1

"# evervim options
let g:evervim_devtoken = 'S=s243:U=1fab4a3:E=1422348b21f:C=13acb978620:P=1cd:A=en-devtoken:H=c294e50a5717a9f80c99b0ecd751ceea'

"# hz_ja.vim plugin settings
vnoremap <silent> han :HzjaConvert han_ascii<CR>
vnoremap <silent> hank :HzjaConvert han_kana<CR>
vnoremap <silent> hana :HzjaConvert han_eisu<CR>
vnoremap <silent> hanm :HzjaConvert han_kigou<CR>
vnoremap <silent> hanA :Hankaku<CR>
vnoremap <silent> zen :HzjaConvert zen_ascii<CR>
vnoremap <silent> zenk :HzjaConver zen_kana<CR>
vnoremap <silent> zena :HzjaConver zen_eisu<CR>
vnoremap <silent> zenm :HzjaConver zen_kigou<CR>
vnoremap <silent> zenA :Zenkaku<CR>

"# my options
syntax on

set modelines=0
set clipboard=unnamed,autoselect
"# require xsel
vnoremap <C-c> :w !xsel -ib<CR><CR>

set nu
set hidden
set wildmenu
set showcmd
set hlsearch
set backspace=indent,eol,start
set nostartofline

set autoindent
"set paste " if this option enabled, neocomplcache broken
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

set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set laststatus=2

set showmatch

set nobackup
set noswapfile

set scrolloff=12

"# hjkl on insert mode
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"# select wheel current line
vnoremap v <ESC>0v$h

"# insert Line Feed
nnoremap <silent> , i<CR><ESC>
nnoremap <silent> . o<ESC>

"# off ime when insert mode end
" set noimdisable
" set iminsert=0 imsearch=0
" set noimcmdline
" inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"# auto space after camma
"inoremap , ,<Space>

"# hit x without yank
nnoremap x "_x
nnoremap X "_X

"# hit tab insert indent
nnoremap <silent> <Tab> >>
nnoremap <silent> <S-Tab> <<

"# multi lines indent in visual mode
vnoremap <silent><Tab> >gv
vnoremap <silent><S-Tab> <gv

nnoremap <silent><C-n> <ESC>:tabnew<CR>
nnoremap <silent><C-c> <ESC>:tabclose<CR>

"# toggle color in vi mode
autocmd InsertEnter * highlight StatusLine ctermfg=White ctermbg=DarkBlue cterm=none
autocmd InsertLeave * highlight StatusLine ctermfg=Black ctermbg=White cterm=none

"# always cursor position in center
"autocmd CursorMoved,CursorMovedI * normal! zz

"# require stty -ixon -ixoff
nnoremap <C-s> <ESC>:w<CR>
nnoremap <C-q> <ESC>:q<CR>

command! VR :source ~/.vimrc
