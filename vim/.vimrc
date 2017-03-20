execute pathogen#infect()

syntax on

" load file-type specific indentation files at ~/.vim/**/indent/*.vim
filetype plugin indent on 

" set unknown filestypes to be like other known ones
au BufRead,BufNewFile *.handlebars,*.hbs set filetype=html
au BufNewFile,BufRead *.q set filetype=sql

colorscheme vividchalk
set guifont=Inconsolata-dz
set encoding=utf-8

" window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" make capital y behave like other capital commands
map Y y$

call pathogen#infect()
set directory^=$HOME/.vim_swap// " one place so I don't have to add to .gitignore

" Open files in new tabs from netwr directory browser
let g:netrw_browse_split = 3

" spacing
set expandtab " tabs as spaces
set tabstop=2 " number of visual spaces per TAB when reading file
set shiftwidth=2

" UI
set cursorline " highlight cursor line
set number " show line numbers
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when needed
set showmatch " highlight matching [{()}]

" folding
set foldlevelstart=3 " open the first 3 folds
set foldmethod=indent " fold based on indent level (which is the most useful for code)

" Stop vim-go from being stupid
let g:go_disable_autoinstall = 1

" turn on match plugin
runtime macros/matchit.vim
