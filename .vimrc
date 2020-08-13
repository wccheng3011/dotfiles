" basic "
set nocompatible

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

" YCM "
Plug 'Valloric/YouCompleteMe'

" NerdTree "
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'tpope/vim-fugitive'

" LightLine "
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'dense-analysis/ale'

" Commenting "
Plug 'scrooloose/nerdcommenter'

" Python check "
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Auto Pair "
Plug 'jiangmiao/auto-pairs'

" Ctag "
Plug 'majutsushi/tagbar'

Plug 'plasticboy/vim-markdown'

" Theme "
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'

Plug 'mbbill/undotree'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'



call plug#end()





