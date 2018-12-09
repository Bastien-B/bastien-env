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

set rtp+=/usr/bin/fzf

"
" Plugins list handled by Vundle
"
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'

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
set mouse=a
set clipboard=unnamedplus
set hlsearch
set updatetime=100

syntax enable
colorscheme monokai
hi Search ctermbg=DarkGreen
hi Search ctermfg=Black

" Indent config
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

"
" Custom commands
"
command RemoveTrailingSpaces %s/\s\+$//e

"
" Custom mappings
"
" <C-Space>: toggle NERDTree
nnoremap <C-@> :NERDTreeToggle<CR>
" <F5>: easy buffers switch
nnoremap <F5> :buffers<CR>:buffer<Space>
" <;>: toggle search pane with :Files
nnoremap ; :Files<CR>
