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

" set theme "
colorscheme gruvbox
set background=dark

" custom binding
let mapleader = " "
nmap <Leader>hh gT
nmap <Leader>ll gt
" move tabe
map <Leader>ml :tabmove +1<CR>
map <Leader>mh :tabmove -1<CR>
map <Leader><space> :StripWhitespace<cr>


" nertree
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1


" ale
let g:ale_fix_on_save = 1

" lightline "
set laststatus=2


let g:lightline = {
     \ 'colorscheme': 'seoul256',
     \}


" ctags
" specify the ctags path
let g:tagbar_ctags_bin = '/usr/bin/ctags'
nmap <Leader>t :TagbarToggle<CR>

" ycm disable preview windows
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
