if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim'))

"### Shougo
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/vimshell')
call dein#add('Shougo/vimfiler')
call dein#add('Shougo/unite.vim')

"### tpope
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-rails')

"### github (filer/search)
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('flazz/vim-colorschemes')
call dein#add('majutsushi/tagbar')

"### vim-scripts repos
call dein#add('sudo.vim')
call dein#add('ruby-matchit')

"### github (editing)
call dein#add('terryma/vim-multiple-cursors')
call dein#add('tomtom/tcomment_vim')
call dein#add('soramugi/auto-ctags.vim')
call dein#add('ain/vim-capistrano')

"### github (syntax)
call dein#add('vim-ruby/vim-ruby')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('kchmck/vim-coffee-script')
call dein#add('slim-template/vim-slim')
call dein#add('othree/html5.vim')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('vim-scripts/AnsiEsc.vim')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('AndrewRadev/switch.vim')

call dein#end()

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
scriptencoding utf-8
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
set showmatch

function! ZenkakuSpace()
  highlight ZenkakuSpace ctermbg=Red
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme * call ZenkakuSpace()
    autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
  augroup END
  call ZenkakuSpace()
endif

"### ime
"# must off when insert mode end
set imdisable
imap <silent><ESC> <ESC>:set iminsert=0<CR>
"# must off when boot
set iminsert=0 imsearch=0
"# must off on command mode
set noimcmdline

"### status line and command line
set laststatus=2
set showcmd
set showmode
set cmdheight=1
set statusline=%<%F\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}
set statusline+=%=%l,%c%V%8P
" set statusline+=%{fugitive#statusline()} " add git branch

"### for neocomple
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 0

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" " Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
"
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  " return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
" let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

"### vimfiler
let g:unite_enable_start_insert = 0
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

"### vim-slim
autocmd BufNewFile,BufRead *.slim set ft=slim

"### tagbar
nnoremap <silent><F8> :TagbarToggle<CR>

"### fugitive
autocmd QuickFixCmdPost *grep* cwindow

"### syntax check
" let g:syntastic_ruby_checkers = ['rubocop']

"### colorscheme
set background=dark
" colorscheme darkblue
" colorscheme delek
" colorscheme elflord
" colorscheme industry
" colorscheme morning
" colorscheme pablo
" colorscheme ron
" colorscheme slate
" colorscheme zellner
" colorscheme blue
" colorscheme default
" colorscheme desert
" colorscheme evening
colorscheme koehler
" colorscheme murphy
" colorscheme peachpuff
" colorscheme shine
" colorscheme torte
"
"### highlight indent
" highlight IndentGuidesOdd ctermbg=241
" highlight IndentGuidesEven ctermbg=240
" let g:indent_guides_start_level=2
" let g:indent_guides_enable_on_vim_startup = 1 " 透過コンソールだから？色調整必要

"### lightline
" let g:lightline = {
"   \ 'colorscheme': 'wombat',
"   \ }
" let g:lightline = {
"   \ 'colorscheme': 'solarized',
"   \ }

"### vimshell keymap
nnoremap <silent><C-x> :<C-u>VimShellTab<CR>

"### select lines
nnoremap <silent>vv V
nnoremap <silent>va <ESC>ggVG

"### insert Line Feed
nnoremap <silent>, i<CR><ESC>
nnoremap <silent>. o<ESC>

"### without yank
nnoremap x "_x
nnoremap X "_X
nnoremap d "_d
nnoremap D "_d
nnoremap c "_c
nnoremap C "_C
vnoremap d "_D
vnoremap D "_D
vnoremap c "_c
vnoremap C "_C

"### hit tab key insert indent
nnoremap <silent><Tab> >>
nnoremap <silent><S-Tab> <<

"### multi lines indent in visual mode
vnoremap <silent><Tab> >gv
vnoremap <silent><S-Tab> <gv

"### toggle color in vi mode
" autocmd InsertEnter * highlight StatusLine ctermfg=White ctermbg=DarkBlue cterm=none
" autocmd InsertLeave * highlight StatusLine ctermfg=Black ctermbg=White cterm=none

"### anywere SID.
function! s:SID_PREFIX() " Anywhere SID.
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

"### Set tabline.
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
set tabpagemax=100

"### The prefix key.
nnoremap [Tag] <Nop>
nmap <silent> t [Tag]

"### Tab jump
for n in range(1, 20)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
"}}}

"### tc 新しいタブを一番右に作る
map <silent> [Tag]c :tablast <bar> tabnew<CR>

"### tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>

" "### tn 次のタブ ！multi-cursorsが動作しなくなるので標準のgtを使用
" map <silent> [Tag]n :tabnext<CR>

"### tp 前のタブ ！multi-cursorsが動作しなくなるので標準のgtを使用
" map <silent> [Tag]p :tabprevious<CR>

" 関数ジャンプで新しいタブに開く
map <C-]> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" ctags
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.ctags']
let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
let g:auto_ctags_filetype_mode = 1
autocmd FileType css setlocal tags=.ctags/css.tags
autocmd FileType html,markdown setlocal tags=.ctags/html.tags
autocmd FileType javascript setlocal tags=.ctags/javascript.tags
autocmd FileType python setlocal tags=.ctags/python.tags
autocmd FileType xml setlocal tags=.ctags/xml.tags
autocmd FileType ruby setlocal tags=.ctags/ruby.tags

" highlight turn gui=standout cterm=standout
" call matchadd("turn", '.\%>81v')

" nginx syntax highlighting
autocmd BufRead,BufNewFile *.nginx,/etc/nginx/*.conf,/etc/nginx/conf.d/* setfiletype nginx
