" Use soft tabs 4 spaces long
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" Case insensitive searches, unless the pattern includes capitals
set ignorecase
set smartcase

" Hide netrw browser banner
let g:netrw_banner = 0

" Easier movement through windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Use <Space> to save current buffer
map <Space> :w!<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo
cmap w!! w !sudo tee > /dev/null %

" Highlight searches
set hlsearch
" Show hybrid line numbers for normal mode
set number relativenumber
" But absolute numbers for insert mode
" and when buffer has no focus
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Plugin manager vim-plug
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Example of plugin installation,
"   see https://github.com/junegunn/vim-plug for more examples
" Plug 'https://github.com/jmcantrell/vim-virtualenv.git'

" Surround plugin
Plug 'https://github.com/tpope/vim-surround.git'

" Repeat plugin
Plug 'https://github.com/tpope/vim-repeat.git'

" Indent text object plugin
Plug 'https://github.com/michaeljsmith/vim-indent-object.git'

" Initialize plugin system
call plug#end()

" PlugInstall will install plugins
