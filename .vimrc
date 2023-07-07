let mapleader = "," " map leader to comma

set mouse=a
set nocompatible

filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab

set guifont=Iosevka\ Nerd\ Font\ Mono\ 14
set guioptions-=m
set guioptions-=T

set number relativenumber

set ignorecase
set smartcase
set incsearch
set nohlsearch

set autochdir
set cinoptions=l1

" Disable auto comment 
augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " Or set desired format options
    " autocmd BufEnter * setlocal formatoptions=crqn2l1j
augroup END

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
