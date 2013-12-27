set nocompatible " Be iMproved

if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/rsense'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell'

"### vim-scripts repos
NeoBundle 'sudo.vim'
"NeoBundle 'rails.vim'
NeoBundle 'ruby-matchit'

"### github (editing)
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tomtom/tcomment_vim'

"### github (syntax)
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'slim-template/vim-slim'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
command! Nbl :NeoBundleList
command! Nbi :NeoBundleInstall
command! Nbu :NeoBundleInstall!
command! Reload :source ~/.vimrc

" Installation check.
NeoBundleCheck


syntax on
set wildmenu

"### indent
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set cindent
set expandtab

"### encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,euc-jp,sjis,cp932,cp20932
set fileformats=unix,dos,mac

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

"### backend option
set shortmess+=I
set nobackup
set noswapfile
set hidden
set helplang=ja
set history=100

"### backspace
set backspace=indent,eol,start

"### character view
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set showtabline=2
highlight NonText ctermfg=DarkGray
highlight SpecialKey ctermfg=DarkGray
highlight link ZenkakuSpace Error
match ZenkakuSpace /　/
"# highlight parenthesis
set showmatch

"### ime
"# must off when insert mode end
set imdisable
imap <silent><ESC> <ESC>:set iminsert=0<CR>
"# must off when boot
set iminsert=0 imsearch=0
"# must off on command mode
set noimcmdline

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ

"### status line and command line
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set laststatus=2
set showcmd
set showmode
set cmdheight=1

"### for neocomple
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"### unite
let g:unite_enable_start_insert = 0

"### vimfiler
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_edit_action = 'open'
let g:vimfiler_time_format = "%y/%m/%d"
let g:vimfiler_default_columns = 'type:time'
nnoremap <silent><F2> :<C-u>VimFilerBufferDir -buffer-name=explorer -split -winwidth=45 -toggle -no-quit<CR>
autocmd FileType vimfiler call s:vimfiler_my_settings()
function! s:vimfiler_my_settings()
  nnoremap <silent><buffer><expr> E vimfiler#do_action('tabopen')
  unmap <buffer> t
  unmap <buffer> T
endfunction

"### vimshell keymap
nnoremap <silent><C-x> :<C-u>VimShellTab<CR>

"### select lines
nnoremap <silent>vv V
nnoremap <silent>va <ESC>ggVG

"### insert Line Feed
nnoremap <silent>, i<CR><ESC>
nnoremap <silent>. o<ESC>

"### hit x without yank
nnoremap x "_x
nnoremap X "_X

"### hit tab key insert indent
nnoremap <silent><Tab> >>
nnoremap <silent><S-Tab> <<

"### multi lines indent in visual mode
vnoremap <silent><Tab> >gv
vnoremap <silent><S-Tab> <gv

"### toggle color in vi mode
autocmd InsertEnter * highlight StatusLine ctermfg=White ctermbg=DarkBlue cterm=none
autocmd InsertLeave * highlight StatusLine ctermfg=Black ctermbg=White cterm=none

"### tab line
function! s:SID_PREFIX() " Anywhere SID.
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2

" The prefix key.
nnoremap [Tag] <Nop>
nmap t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
"}}}

