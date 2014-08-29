call pathogen#infect()

filetype indent plugin on
syntax on
set ruler
set ignorecase
set hlsearch!
set background=dark
colorscheme Tomorrow-Night
set lazyredraw
set t_Co=256
set smartindent
set number
set incsearch
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set scrolloff=10
set wrap
set linebreak
set nolist
set backspace=2
set backspace=indent,eol,start
set laststatus=2
set title
set nobackup
set noswapfile
set hidden
set showcmd
set cursorline
set breakindent
set regexpengine=1

au FileType python setl sw=2 sts=2 et

" Keymaps
let mapleader=","
:nmap <Leader>sv :source $MYVIMRC
:nmap <Leader>v :e $MYVIMRC
:nnoremap <C-]> :set hlsearch!<CR>
:nmap <C-A> :set list!<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
:imap <C-[> <Esc>
:nmap j gj
:nmap k gk
:nmap \q :nohlsearch<CR>
:nmap <Leader>x :bnext<CR>
:nmap <Leader>z :bprev<CR>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <right> <nop>
nnoremap <left> <nop>
:nmap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>l :set relativenumber!<CR>
nmap <Leader>w :bd<CR>
:noremap <Leader>r :set nowrap! <CR>

" Vim go
let g:go_disable_autoinstall = 1
" Vim ctrlp ignor
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'


function! GoyoBefore()
  Limelight
endfunction

function! GoyoAfter()
  Limelight!
endfunction

let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]
let g:airline#extensions#tabline#enabled = 1
command -nargs=+ Se execute 'vimgrep /' . [<f-args>][0] . '/ **/*.' . [<f-args>][1]


"smart indent when entering insert mode with i on empty lines
function! IndentWithI()
if len(getline('.')) == 0
return "\"_ddO"
else
return "i"
endif
endfunction
nnoremap <expr> i IndentWithI()

set shell=/bin/bash
