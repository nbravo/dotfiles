let mapleader = "\<Space>"

" Space + w instead of :w
nnoremap <Leader>w :w<CR>

" Automatically jump to end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Enter to go to end of file instead of G
nnoremap <CR> G

" Tab to match (,{, etc instead of %
nnoremap <tab> %

:set title
:set expandtab tabstop=2 shiftwidth=2 softtabstop=2
:set clipboard=unnamedplus

:set autoindent
:set paste
:set cursorline
:set ttyfast
:set relativenumber

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Move up or down one line even if the line is wrapped
:nmap j gj
:nmap k gk

" Search incrementally, with highlighting
:set incsearch
:set showmatch
:set hlsearch
:nmap <Leader>h :nohlsearch<CR>
:set ignorecase
:set smartcase
:set gdefault
