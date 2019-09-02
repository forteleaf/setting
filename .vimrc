" Syntax Highlighting
if has ("syntax")
  syntax on
endif
filetype off

set autoindent
set cindent

set nu
set hlsearch "검색에 음영 표시

set ts=3
set laststatus=2 "상태바
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set enc=utf-8
" ///////////////////////////////////////////////////////

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'othree/html5.vim' "html5
Plugin 'pangloss/vim-javascript' "javascript

Plugin 'fatih/vim-go' "Golang

Plugin 'posva/vim-vue'
Plugin 'AutoComplPop'

call vundle#end()            " required
filetype plugin indent on    " required
