set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set cindent
set expandtab

"# hit tab key insert indent
nnoremap <silent><Tab> >>
nnoremap <silent><S-Tab> <<

"# multi lines indent in visual mode
vnoremap <silent><Tab> >gv
vnoremap <silent><S-Tab> <gv

filetype plugin on
filetype indent on
autocmd FileType php setlocal noexpandtab
autocmd FileType go setlocal noexpandtab
