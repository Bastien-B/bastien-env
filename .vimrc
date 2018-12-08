set encoding=utf-8
scriptencoding utf-8

"
" Begin Vundle
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"
" Plugins list handled by Vundle
"
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'

call vundle#end()
filetype plugin indent on
"
" End Vundle
"

"
" Lightline plugin config
"
let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitinfo', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head',
  \   'gitinfo': 'GitInfo'
  \ },
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2"},
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3"}
  \ }

function! GitInfo()
  return fugitive#head() ==? '' ? '' : "\uf418 " . fugitive#head()
endfunction

set laststatus=2
set noshowmode
"
" End Lightline plugin config
"

set number
set mouse:a
set clipboard=unnamed
set hlsearch

syntax enable
colorscheme monokai
hi Search ctermbg=DarkGreen
hi Search ctermfg=Black

" Indent config
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
