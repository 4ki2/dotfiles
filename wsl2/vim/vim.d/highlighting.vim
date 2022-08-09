syntax on

"# set list
"# set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

"# 全角
function! ZenkakuSpace()
  highlight ZenkakuSpace ctermbg=Red
endfunction
augroup ZenkakuSpace
  autocmd!
  autocmd ColorScheme * call ZenkakuSpace()
  autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
augroup END
call ZenkakuSpace()

"# nginx
autocmd BufRead,BufNewFile *.nginx,/etc/nginx/*.conf,/etc/nginx/conf.d/* setfiletype nginx

"# slim
autocmd BufNewFile,BufRead *.slim set ft=slim

