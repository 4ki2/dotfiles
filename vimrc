"#! require https://github.com/Shougo/neobundle.vim
set nocompatible " be iMproved
"set mouse=a      "enable mouse use

filetype off               " required!
filetype plugin indent off " required!
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

"### NeoBundle creaters
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neobundle-vim-scripts'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \     'unix' : 'make -f make_unix.mak',
  \   },
  \ }
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplcache-rsense'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/rsense'

"### vim-scripts repos
NeoBundle 'L9'
NeoBundle 'sudo.vim'
NeoBundle 'rails.vim'
NeoBundle 'ruby-matchit'
NeoBundle 'railscasts' " terminal color

"### original repos on github(my plugins)
NeoBundle 'basyura/unite-rails'
NeoBundle 'honza/snipmate-snippets'
NeoBundle 'kakkyz81/evervim' " for evernote
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'ornicar/vim-mru'
NeoBundle 'othree/eregex.vim'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'taq/vim-rspec'
NeoBundle 'thinca/vim-tabrecent'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'ujihisa/unite-rake'
NeoBundle 'vim-ruby/vim-ruby'

"### non github repos
NeoBundle 'git://git.wincent.com/command-t.git'
filetype plugin indent on " required!

"# vimshell keymap
nnoremap <silent><C-x> :<C-u>VimShellTab<CR>

"# unite.vim keymap
let g:unite_source_file_mru_limit = 20
nnoremap <silent><C-h> :<C-u>Unite file_mru<CR>
nnoremap <silent><C-y> :<C-u>Unite -buffer-name=register register<CR>
inoremap <C-u> <Esc>:Unite snippet<CR>

"# neocomplcache options
let g:neocomplcache_enable_at_startup=1
"let g:neocomplcache_max_list = 20
"let g:neocomplcache_plugin_disable = {
"  \ 'syntax_complete' : 1, 
"  \ }
"let g:neocomplcache_enable_auto_select = 0
let g:neocomplcache#sources#rsense#home_directory = '~/.vim/bundle/rsense'
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_rails=1
let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'
let g:neosnippet#enable_snipmate_compatibility = 1
imap <C-f> <Plug>(neosnippet_expand_or_jump)
smap <C-f> <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

"# railscast colors
"colorscheme railscasts

"# for NERDTree
let g:NERDTreeMinimalUI=1 " simple menu
let g:NERDTreeDirArrows=0 " file name prefixed
let g:NERDTreeMouseMode=2 " mouse control enabled
nnoremap <silent><C-g>      :<C-u>NERDTreeToggle<CR>
vnoremap <silent><C-g> <Esc>:<C-u>NERDTreeToggle<CR>
onoremap <silent><C-g>      :<C-u>NERDTreeToggle<CR>
inoremap <silent><C-g> <Esc>:<C-u>NERDTreeToggle<CR>
cnoremap <silent><C-g> <C-u>:<C-u>NERDTreeToggle<CR>
"autocmd vimenter * if !argc() | NERDTree | endif " autoboot unless arguments
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " autoclose

"# for NERD_commenter
"let g:NERDCreateDefaultMappings=0 " disabled key mappings
let g:NERDSpaceDelims=1
" nmap <silent> <C-_> <Plug>NERDCommenterToggle
" vmap <silent> <C-_> <Plug>NERDCommenterToggle

"# tagbar options
nnoremap <silent><C-l> :<C-u>TagbarToggle<CR>
let g:tagbar_singleclick=1

"# evervim options
let g:evervim_devtoken=$EVERNOTE_DEVTOKEN

"# hz_ja.vim plugin settings
vnoremap <silent>han  :HzjaConvert han_ascii<CR>
vnoremap <silent>hank :HzjaConvert han_kana<CR>
vnoremap <silent>hana :HzjaConvert han_eisu<CR>
vnoremap <silent>hanm :HzjaConvert han_kigou<CR>
vnoremap <silent>hanA :Hankaku<CR>
vnoremap <silent>zen  :HzjaConvert zen_ascii<CR>
vnoremap <silent>zenk :HzjaConver zen_kana<CR>
vnoremap <silent>zena :HzjaConver zen_eisu<CR>
vnoremap <silent>zenm :HzjaConver zen_kigou<CR>
vnoremap <silent>zenA :Zenkaku<CR>

"### my options
syntax on
set wildmenu

"### backend option
set shortmess+=I
set nobackup
set noswapfile
set hidden
set helplang=ja
set history=100

"# related comment
set modelines=0

"### copy and paste
set clipboard=unnamed,autoselect
"#! require xsel
vmap <silent><C-c> :w !xsel -ib<CR><CR>
"set paste " if this option enabled, neocomplcache broken

"### cursor and scroll
set nostartofline
set scrolloff=10

"### line number
set number
set numberwidth=4

"### search
set smartcase
set ignorecase
set hlsearch

"### indent
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set cindent
set expandtab

"### character view
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set showtabline=2
highlight NonText ctermfg=DarkGray
highlight SpecialKey ctermfg=DarkGray
highlight link ZenkakuSpace Error
match ZenkakuSpace /　/
"# highlight parenthesis
set showmatch

"### encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,euc-jp,sjis,cp932,cp20932
set fileformats=unix,dos,mac

"### ime
"# off when insert mode end
set imdisable
imap <silent><ESC> <ESC>:set iminsert=0<CR>
"# off when boot
set iminsert=0 imsearch=0
"# off on command mode
set noimcmdline

"### status line and command line
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set laststatus=2
set showcmd
set showmode
set cmdheight=1

"### backspace
set backspace=indent,eol,start

"### bind keymap
"# hjkl on insert mode
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>
"# select wheel current line (same shift-v)
vnoremap <silent>v <ESC>0v$h
"# select all
vnoremap <silent>a <ESC>ggVG
"# insert Line Feed
nnoremap <silent>, i<CR><ESC>
nnoremap <silent>. o<ESC>
"# hit x without yank
nnoremap x "_x
nnoremap X "_X
"# hit tab key insert indent
nnoremap <silent><Tab> >>
nnoremap <silent><S-Tab> <<
"# multi lines indent in visual mode
vnoremap <silent><Tab> >gv
vnoremap <silent><S-Tab> <gv
"# require stty -ixon -ixoff
nnoremap <silent><C-s> <ESC>:<C-u>w<CR>
nnoremap <silent><C-s>s <ESC>:<C-u>w sudo:%<CR>
nnoremap <silent><C-q> <ESC>:<C-u>q<CR>
"# open file on cursor into new tab
"nnoremap <silent><C-m> <ESC><C-w>gf
"# shortcats for tab
nnoremap <silent>tf <ESC>:<C-u>tabfirst<CR>
nnoremap <silent>tl <ESC>:<C-u>tablast<CR>
nnoremap <silent>tr <ESC>:<C-u>TabRecent<CR>
nnoremap <silent>ts <ESC>:<C-u>tabs<CR>
nnoremap <silent>tn <ESC>:<C-u>tabnew<CR>
nnoremap <silent>tc <ESC>:<C-u>tabclose<CR>
"# command line keybind like shell
:cnoremap <C-a> <Home>
:cnoremap <C-b> <Left>
:cnoremap <C-d> <Del>
:cnoremap <C-e> <End>
:cnoremap <C-f> <Right>
:cnoremap <C-n> <Down>
:cnoremap <C-p> <Up>
:cnoremap <Esc><C-b> <S-Left>
:cnoremap <Esc><C-f> <S-Right>

"### toggle color in vi mode
autocmd InsertEnter * highlight StatusLine ctermfg=White ctermbg=DarkBlue cterm=none
autocmd InsertLeave * highlight StatusLine ctermfg=Black ctermbg=White cterm=none

"### always cursor position in center
"autocmd CursorMoved,CursorMovedI * normal! zz

"### my commands
command! Nbi :NeoBundleInstall
command! Nbu :NeoBundleUpdate
command! VR :source ~/.vimrc
