""" Plug-ins I think I want """
" textobj-entire, syntastic, NERDtree, comments, tags

" Ensure we are out of crappy vi compatible mode.
:set nocompatible

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

colorscheme gotham256

let mapleader = "\<Space>"

" Automatically jump to end of pasted text
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Enter to go to end of file instead of G
nnoremap <CR> G

" Tab to match (,{, etc instead of %
nnoremap <tab> %

" Enable syntax highlighing
:syntax on

" show mode
:set showmode

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Create Blank Newlines and stay in Normal mode, move to new line
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Avoid shift key when exiting without saving
nnoremap zq ZQ

" jj instead of Escape in insert mode!
inoremap hh <Esc>

" Don't have vim store backup or swap files.
:set nobackup
:set noswapfile

:set title
:set expandtab tabstop=2 shiftwidth=2 softtabstop=2
:set clipboard=unnamedplus

" Always show the status line
:set laststatus=2

:set autoindent

" Highlight under the current line
:set cursorline

" Faster scrolling
:set ttyfast

" Enable folding
:set foldenable
:set foldlevelstart=10
:set foldnestmax=10
:set foldmethod=indent

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" Use decimal rather than octal for nums with leading zeros
:set nrformats=

" Highlight last inserted text
nnoremap gV `[v`]

" Line numbers are shown relative to current line rather than absolute
:set relativenumber

" This with relativenumber enables hybrid mode
:set number

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Move up or down one line even if the line is wrapped
:nmap j gj
:nmap k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Search incrementally, with highlighting
:set incsearch

" Highlight matching [{()}]
:set showmatch

" Highlight matching search terms
:set hlsearch

:set smartcase

" Regex substitution is global by default
:set gdefault

" Keep at least 8 lines above/below
:set scrolloff=8

""" Leader Maps """

" Turn off highlighting with Space + h
:nmap <silent> <Leader>h :nohlsearch<CR>

" Space + s to switch case of selectioninstead of ~
nnoremap <Leader>s ~
vnoremap <Leader>s ~

" Space + c for change case operator
nnoremap <Leader>c g~

" Space + w instead of :w
nnoremap <Leader>w :w<CR>

" Create Blank Newlines and stay in Normal mode, stay on current line
nnoremap <silent> <Leader>j :set paste<cr>m`o<esc>``:set nopaste<cr>
nnoremap <silent> <Leader>k :set paste<cr>m`O<esc>``:set nopaste<cr>

" Find merge conflict markers
nnoremap <Leader>mc /\v^[<=>]{7}( .*\|$)<cr>

" Space + 0 instead of " + 0 for first register
nnoremap <Leader>0 "0

" Toggle paste with Space + p
nnoremap <Leader>p :set invpaste paste?<CR>

" Toggle relative and absolute line numbers
nnoremap <silent> <Leader>n :set relativenumber!<CR>
