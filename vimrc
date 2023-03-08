filetype off                  " required
if has ("syntax")
    syntax on
endif

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent

filetype plugin indent on   "required
filetype plugin on          "To ignore plugin indent changes, instead use:

"set display+=lastline
"set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" Basic
set incsearch
set ruler

" How non-printable things are shown
"set list
"set listchars=eol:~,tab:>.,trail:~,extends:>,precedes:<,space:_
"set listchars=tab:>-,trail:·,nbsp:·,extends:>,precedes:<
set title
set number
set relativenumber
set cursorline
set wildmenu
set wildmode=longest:full

"set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P

" How Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set bs=indent,eol,start

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Theme
let g:airline_theme='simple'
let g:airline#extensions#tabline#formatter = 'default'


