" Use soft tabs 4 spaces long
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" Case insensitive searches, unless the pattern includes capitals
set ignorecase
set smartcase

" Easier movement through windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Allow saving of files as sudo when I forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

" Space to go half page down
nnoremap <SPACE> <PAGEDOWN>
