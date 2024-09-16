set number

set directory=~/.vim/swp
set backupdir=~/.vim/backup
set undodir=~/.vim/undo

set ignorecase
set smartcase
set wrapscan
set incsearch

set showmatch matchtime=1
set cmdheight=2
set showcmd
set shiftwidth=2
set tabstop=2
set softtabstop=2
set title

" Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Plugin provides lsp
Plug 'joshdick/onedark.vim' " Plugin provides cool colorscheme
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Requirement plugin for fzf.vim
Plug 'junegunn/fzf.vim' " Plugin provides fazy finder
Plug 'itchyny/lightline.vim' " Plugin provides cool tabline
Plug 'jiangmiao/auto-pairs' " Plugin provides automatic close pairs generation
Plug 'airblade/vim-gitgutter' " Plugin shows me result of git diff
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()

" Plugins setting
syntax on 
colorscheme onedark

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

let g:indent_guides_enable_on_vim_startup=1

" Keymaps
nnoremap ff <Cmd>Files<CR>

nnoremap bs <C-w>s
nnoremap bv <C-w>v
nnoremap bc <C-w>c
nnoremap bo <C-w>o
nnoremap bh <C-w>h
nnoremap bl <C-w>l
nnoremap bj <C-w>j
nnoremap bk <C-w>k
