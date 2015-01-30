:set title
:set expandtab tabstop=2 shiftwidth=2 softtabstop=2
:set clipboard=unnamed
autocmd BufWritePre * :%s/\s\+$//e

:nmap j gj
:nmap k gk

:set incsearch
:set hlsearch
:set ignorecase
:set smartcase
