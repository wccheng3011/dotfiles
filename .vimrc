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

" Show some info
set showcmd
set showmode
set visualbell
set history=1000
set autoread

" Enable mouse "
set mouse=a

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

" html css develop "
Plug 'mattn/emmet-vim'

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

" ycm for c/c++ "
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0


" Set vim transparent
let t:is_transparent = 0                                                                        
function! Toggle_transparent_background()                                                       
  if t:is_transparent == 0                                                                      
    hi Normal guibg=#111111 ctermbg=black                                                       
    let t:is_transparent = 1                                                                    
  else                                                                                          
    hi Normal guibg=NONE ctermbg=NONE                                                           
    let t:is_transparent = 0                                                                    
  endif                                                                                         
endfunction                                                                                     
nnoremap <C-t> :call Toggle_transparent_background()<CR>  

" markdown
let g:vim_markdown_folding_disabled = 1

" ipbd (prefered to insert with map)
map <Leader>m oimport ipbd;ipbd.set_trace()<esc>
" this is insert predefined text by abbreviation
"ab ip import ipdb;ipdb.set_trace()
