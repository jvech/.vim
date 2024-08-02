" General settings in vim

set relativenumber number  
set nowrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab
set expandtab                               " Change tabs for spaces
set smartindent
set autoindent
set ruler
set encoding=utf-8
set fileencoding=utf-8
set pumheight=10
set noswapfile
set splitbelow
set splitright
set colorcolumn=80
set background=dark
set nobackup
set nowritebackup
set noshowmode
set clipboard=unnamedplus                   " Copy paste between vim and everything else
set incsearch
set signcolumn=no
set laststatus=2
set ignorecase                              " Insesitive case search by default
set smartcase                               " If search is lower be case insensitive

filetype plugin indent on
syntax on

"Force saving files that require root permission
cmap w!! w !sudo tee %

" Special File extentions
au BufRead,BufNewFile *.{html,tex,md,ms} setlocal textwidth=80
au BufRead,BufNewFile *.{cir,sp,spice,mod,lib} setlocal filetype=spice
au BufRead,BufNewFile *.{CIR,SP,SPICE,MOD,LIB} setlocal filetype=spice
au BufRead,BufNewFile *.asm setlocal filetype=nasm
au BufNewFile,BufRead *.ms setlocal filetype=groff
au BufNewFile,BufRead *.tex setlocal filetype=tex
au BufNewFile,BufRead /tmp/calcurse*,~/.calcurse/notes/* setlocal filetype=markdown
au BufRead,BufNewFile *.json setlocal tabstop=2 softtabstop=2 shiftwidth=2
