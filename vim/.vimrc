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

" [Syntastic]
" http://blog.thomasupton.com/2012/05/syntastic/#setup
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': [], 'passive_filetypes': ['html'] }

" https://github.com/tupton/vim-support/blob/master/vimrc#L302
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

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

"golang
autocmd filetype go set nolist
let g:go_fmt_command = "goimports"
let g:go_highlight_extra_types = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_string_spellcheck = 0
let g:go_textobj_enabled = 0
"au FileType go nmap gd <Plug>(go-doc)
"au FileType go imap <tab><tab> <C-x><C-o>

" Stop vim-go from being stupid
let g:go_disable_autoinstall = 1

" turn on match plugin
runtime macros/matchit.vim

" Format JSON files (requires python json library to be installed)
nmap =js :%!python -m json.tool<CR>


