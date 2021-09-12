call plug#begin("~/.config/nvim/plugged")
	Plug 'morhetz/gruvbox'
	Plug 'itchyny/lightline.vim'
	Plug 'preservim/nerdtree'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
  Plug 'scrooloose/nerdcommenter'
  "Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
call plug#end()

set number

if (has("termguicolors"))
 set termguicolors
endif
set background=dark
colorscheme gruvbox

" Lightline
let g:lightline = {
  \     'colorscheme': 'powerlineish',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
vnoremap <C-c> :w !pbcopy<CR><CR> 
noremap <C-v> :r !pbpaste<CR><CR>

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle


let g:NERDTreeIgnore = ['^node_modules$']
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab

colorscheme gruvbox

