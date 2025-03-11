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

