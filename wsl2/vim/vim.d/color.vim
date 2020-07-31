"### colorscheme
set background=dark
" colorscheme molokai
" colorscheme gruvbox
" colorscheme tender
" colorscheme nord
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
colorscheme evening
" colorscheme koehler
" colorscheme murphy
" colorscheme peachpuff
" colorscheme shine
" colorscheme torte

set termguicolors

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

"### toggle color in vi mode
" autocmd InsertEnter * highlight StatusLine ctermfg=White ctermbg=DarkBlue cterm=none
" autocmd InsertLeave * highlight StatusLine ctermfg=Black ctermbg=White cterm=none

" highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
" highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
" highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
" highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'

" let g:airline_theme = 'tender'
