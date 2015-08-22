set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" My Bundles
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on
set expandtab
set number
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

let mapleader=","

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" Sort lines
vmap <leader>s :sort<cr>

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" ClangFormat
noremap <leader>f :FormatCode<cr>

" Quit with :Q
command -nargs=0 Quit :qa!
