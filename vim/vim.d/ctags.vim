" ctags
let g:auto_ctags = 0
let g:auto_ctags_directory_list = ['.ctags']
let g:auto_ctags_tags_args = '--tag-relative --recurse --sort=yes'
let g:auto_ctags_filetype_mode = 1
autocmd FileType css setlocal tags=.ctags/css.tags
autocmd FileType html,markdown,tpl setlocal tags=.ctags/html.tags
autocmd FileType javascript setlocal tags=.ctags/javascript.tags
autocmd FileType python setlocal tags=.ctags/python.tags
autocmd FileType xml setlocal tags=.ctags/xml.tags
autocmd FileType ruby setlocal tags=.ctags/ruby.tags


