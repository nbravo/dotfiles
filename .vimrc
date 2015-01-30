set title
set expandtab
set shiftwidth=2
set softtabstop=2
set clipboard=unnamed
autocmd BufWritePre * :%s/\s\+$//e
