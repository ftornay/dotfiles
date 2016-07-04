" Use soft tabs 4 spaces long
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
