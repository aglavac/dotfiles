set nocompatible              
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'leshill/vim-json'
Plugin 'tpope/vim-markdown'
Plugin 'itchyny/lightline.vim'
Plugin 'morhetz/gruvbox'

call vundle#end()            
filetype plugin indent on 

" Unmap up, down, left, rigth in Normal mode
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>
no <down> <Nop>

" Unmap up, down, left, right in Insert mode
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" Unmap up, down, left, right in Visual mode
vno <up> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <down> <Nop>

" Map down to move line down and up  to move line up in Normal mode
" no <up> ddwP
" no <down> ddp

" Insert --> Normal
" FOR NOW JUST CTRL [

" Set color theme
set background=dark
colo gruvbox
" Test this settings
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_termcolors = '16'

" Custom maping
map <C-n> :NERDTreeToggle<CR>
nnoremap j gj
nnoremap k gk

" Set vim
set splitbelow
set splitright
set nu
set ignorecase
set autoindent
set smartindent
set visualbell
set autoread

set tabstop=2
set shiftwidth=2
set softtabstop=2

set showmode
set showcmd

" This setting is for statusline
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
