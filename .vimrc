
" -----------------------------------
" Plugins
" -----------------------------------
call plug#begin()
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-eunuch'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'preservim/nerdtree'
    " tabular plugin is used to format tables
    " Plug 'godlygeek/tabular'
    " JSON front matter highlight plugin
    " Plug 'elzr/vim-json'
    Plug 'plasticboy/vim-markdown'
	Plug 'dkarter/bullets.vim'
    " Plug 'vim-pandoc/vim-pandoc-syntax'
    " Plug 'vimwiki/vimwiki'
call plug#end()


" -----------------------------------
" General setup
" ------------------------------------
let mapleader = " "

set clipboard^=unnamed,unnamedplus " Setup for system clipboard
set expandtab " Use spaces instead of tabs
set smarttab " Be smart when using tabs ;)

set mouse=a

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

set ai "Auto indent
set foldmethod=indent
set number

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>


" -----------------------------------
" VIM Markdown
" ---------------------------------
" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

" yaml tab indent setup
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab 


" -----------------------------------
" Mey mappings
" ----------------------------------

inoremap jk <Esc>

onoremap <silent> j gj
onoremap <silent> k gk

nmap <leader>ss :source %<CR>

" Fast saving
nmap <leader>w :w!<CR>

nmap <leader>f :Files<CR>
nmap <leader>rg :Rg<CR>
nmap <leader>b :Buffers<CR>

" -----------------------------------
" Theme config
" -----------------------------------
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" .............................................................................
" plasticboy / vim-markdown
" .............................................................................
let g:vim_markdown_folding_disabled=1
set conceallevel=2


" .............................................................................
" scrooloose/nerdtree
" .............................................................................
let g:NERDTreeShowHidden=0
let g:NERDTreeAutoDeleteBuffer=1
" let g:NERDTreeQuitOnOpen=0
let NERDTreeQuitOnOpen=0

nnoremap <Leader>nr :NERDTreeToggle /Users/ipandzic/Library/Mobile Documents/com~apple~CloudDocs/Notes<CR>
map <Leader>nn :NERDTreeFocus<CR>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>


" -----------------------------------
" Testing stuff
" -----------------------------------


