execute pathogen#infect()

syntax on
set guifont=Inconsolata\ 12
colorscheme vividchalk
set encoding=utf-8
filetype plugin indent on

" set the swap dir so don't have to add to .gitignore everytime
set directory^=$HOME/.vim_swap//

" html like files should have html highlighting
au BufRead,BufNewFile *.handlebars,*.hbs set filetype=html

" turn on line numbers
set number

" tabs as spaces
set expandtab
set shiftwidth=2
set softtabstop=2

call pathogen#infect()
