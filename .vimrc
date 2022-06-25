" Color scheme
colorscheme koehler

" Use soft tabs 4 spaces long
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

if has("autocmd")
    " If the filetype is Makefile then we need to use tabs
    " So do not expand tabs into space.
    autocmd FileType make set noexpandtab
endif

" Case insensitive searches, unless the pattern includes capitals
set ignorecase
set smartcase

" Hide netrw browser banner
let g:netrw_banner = 0

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" Easier movement through windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Nice terminal on bottom
nmap <C-t>t :bo term ++rows=10<CR>

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

" Kotlin-vim
Plug 'https://github.com/udalov/kotlin-vim'

" Initialize plugin system
call plug#end()

" PlugInstall will install plugins
