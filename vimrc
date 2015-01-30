" Ensure we are out of crappy vi compatible mode.
:set nocompatible

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

" Enable syntax highlighing
:syntax on

" show mode
:set showmode

" Create Blank Newlines and stay in Normal mode, move to new line
nnoremap <silent> zj o<Esc>
nnoremap <silent> zk O<Esc>

" Create Blank Newlines and stay in Normal mode, stay on current line
nnoremap <silent> <Leader>j o<Esc>k
nnoremap <silent> <Leader>k O<Esc>j

" Avoid shift key when exiting without saving
nnoremap zq ZQ

" jj instead of Escape in insert mode!
inoremap jj <Esc>

" Space + 0 instead of " + 0 for first register
nnoremap <Leader>0 "0

" Don't have vim store backup or swap files.
:set nobackup
:set noswapfile

:set title
:set expandtab tabstop=2 shiftwidth=2 softtabstop=2
:set clipboard=unnamedplus

:set autoindent
nnoremap <Leader>p :set invpaste paste?<CR>
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
:set smartcase
:set gdefault
