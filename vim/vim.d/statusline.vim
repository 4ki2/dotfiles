"# status line and command line
set laststatus=2
set showcmd
set showmode
set cmdheight=1
set statusline=%<%F\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}
set statusline+=%=%l,%c%V%8P
" set statusline+=%{fugitive#statusline()} " add git branch

