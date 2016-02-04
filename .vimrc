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
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on
set expandtab
set number
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2
set textwidth=80

let mapleader=","

" Quick ESC
imap jj <ESC>
noremap <space> :

map <leader>ev :e! ~/.vimrc<cr> " edit ~/.vimrc

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" Sort lines
vmap <leader>s :sort<cr>

" Create windows.
map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

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

" CtrlP
nnoremap <Leader>o :CtrlP<CR>

" Edit vimrc.
nnoremap <Leader>e :e ~/.vimrc<CR>

syntax enable
