" Syntax Highlighting
if has ("syntax")
  syntax on
endif
filetype off

set autoindent
set cindent
set expandtab "tab을 spacebar로 처리

set nu
set hlsearch "검색에 음영 표시

set ts=3
set laststatus=2 "상태바
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set enc=utf-8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline' "StateBar
Plugin 'airblade/vim-gitgutter' "git state with vim-airline
Plugin 'othree/html5.vim' "html5
Plugin 'pangloss/vim-javascript' "javascript

Plugin 'fatih/vim-go' "Golang

Plugin 'posva/vim-vue'
Plugin 'AutoComplPop'
Plugin 'scrooloose/nerdtree' "tree

call vundle#end()            " required
filetype plugin indent on    " required

map <Leader>nt <ESC>:NERDTree<CR>
" Tree 아이콘 변경
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 파일없이 vim만 틸 경우 자동으로 NERD Tree 실행.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 디렉토리를 vim으로 여는 경우 NERD Tree 실행.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
