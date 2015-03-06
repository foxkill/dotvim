" vim: set foldmarker={,} foldlevel=0 foldmethod=marker:

" my cool vimrc file
"
" Copyright (c) Stefan Martin 2015
"

" first run pathogen
execute pathogen#infect()
execute pathogen#helptags()

syntax on

if has("autocmd")
   filetype plugin indent on
endif

" enable modeline feature
set modeline
set modelines=5

"
" local adjustments
"
source ~/.vimrc.local

"
" omnicomplete
"
" set omnifunc=syntaxcomplete#Complete
au FileType php set omnifunc=phpcomplete#CompletePHP
set encoding=utf-8
set laststatus=2
" set rtp+=/usr/lib/python3.4/site-packages/powerline/bindings/vim

"
" visual stuff
"
set number
set listchars=tab:>\ ,trail:.
set ttyfast                             " faster redrawing
set wildmenu                            " set improved wildcard menu

"
" basic settings
"
set ts=4
set shiftwidth=4
set expandtab
set softtabstop=4

" no wrap around
set nowrap

" no comptible with oldvim
set nocompatible

" enable multiple modified buffers
set hidden

" extended history
set history=1000

"
" files and directories
"
set noswapfile
" set tags=./tags;/,$HOME/vimtags
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/\.svn/*,*/node_modules/*

"
" Key mappings
"
let mapleader = ","
nnoremap ü <C-]>

"
" vimrc
"

" edit .vimrc quickly
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>

" fast saves
nnoremap <leader>w :w!<CR>

"easy mapping to normal mode
imap jj <ESC>

"
" search stuff
" {

highlight search cterm=underline
" remove search results
command! H let @/=""

" hlsearch stuff
autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch
" }

" autosource
autocmd! bufwritepost .vimrc source $HOME/.vimrc

" remove trailing spaces when writing php files
autocmd! bufwritepre *.php :%s/\s\+$//e
