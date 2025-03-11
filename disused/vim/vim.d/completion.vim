set wildmenu
set wildmode=longest,full

"### for deoplete

"# Disable AutoComplPop.
let g:acp_enableAtStartup = 0
"# Use deoplete.
let g:deoplete#enable_at_startup = 1
"# Use smartcase.
call deoplete#custom#option('smart_case', v:true)
"# Set minimum syntax keyword length.
let g:deoplete#sources#syntax#min_keyword_length = 2
let g:deoplete#lock_buffer_name_pattern = '\*ku\*'
"# AutoComplPop like behavior.
let g:deoplete#enable_auto_select = 0

"# Define dictionary.
let g:deoplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

"# Define keyword.
call deoplete#custom#option('keyword_patterns', {
  \ 'default': '\h\w*'
  \ })

"# Plugin key-mappings.
inoremap <expr><C-g>     deoplete#undo_completion()
inoremap <expr><C-l>     deoplete#complete_common_string()
"
"# Recommended key-mappings.
"# <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return deoplete#close_popup() . "\<CR>"
  "# For no inserting <CR> key.
  "# return pumvisible() ? deoplete#close_popup() : "\<CR>"
endfunction
"# <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"# <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."\<C-h>"
"# Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? deoplete#close_popup() : "\<Space>"

"# Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,tpl setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

if !exists('g:deoplete#force_omni_input_patterns')
  let g:deoplete#force_omni_input_patterns = {}
endif
let g:deoplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:deoplete#force_omni_input_patterns.go = '[^. \t]\.\%(\h\w*\)\?'

"### for neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

