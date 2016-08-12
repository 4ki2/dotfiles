set showtabline=2

"# The prefix key.
nnoremap [Tag] <Nop>
nmap <silent> t [Tag]

"# tc 新しいタブを一番右に作る
map <silent> [Tag]c :tablast <bar> tabnew<CR>

"# tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>

"# tn 次のタブ ！multi-cursorsが動作しなくなるので標準のgtを使用
" map <silent> [Tag]n :tabnext<CR>

"# tp 前のタブ ！multi-cursorsが動作しなくなるので標準のgtを使用
" map <silent> [Tag]p :tabprevious<CR>

"# 関数ジャンプで新しいタブに開く
map <C-]> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"# anywere SID.
function! s:SID_PREFIX() " Anywhere SID.
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

"# Set tabline.
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

"# Tab jump
for n in range(1, 20)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
"}}}

