execute pathogen#infect()

syntax on
set guifont=Inconsolata\ 12
colorscheme vividchalk
set encoding=utf-8
filetype plugin indent on
call pathogen#infect()

" html like files should have html highlighting
au BufRead,BufNewFile *.handlebars,*.hbs set filetype=html

" set the swap dir so don't have to add to .gitignore everytime
set directory^=$HOME/.vim_swap//

" turn on line numbers
set number

" tabs as spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" Show matching braces
set showmatch

" move around windows easier
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" [Syntastic]
" http://blog.thomasupton.com/2012/05/syntastic/#setup
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }

" https://github.com/tupton/vim-support/blob/master/vimrc
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
