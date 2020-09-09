" Syntax Highlighting
if has ("syntax")
  syntax on
endif
filetype off
set helplang=ko

set autoindent
set cindent
set expandtab "tab을 spacebar로 처리

set nu
set hlsearch "검색에 음영 표시
set ignorecase smartcase "검색시 대소문자 검색 (tab 포함)
set cursorline "커서라인 강조

set background=dark
set tabstop=4
set shiftwidth=4
set laststatus=2 "상태바
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set enc=utf-8
set fileencoding=utf8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let g:Powerline_symbols = 'fancy'
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline' "StateBar
Plugin 'airblade/vim-gitgutter' "git state with vim-airline
Plugin 'othree/html5.vim' "html5
Plugin 'pangloss/vim-javascript' "javascript
Plugin 'majutsushi/tagbar'

"Coding
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround' "text wrap

Plugin 'fatih/vim-go' "Golang
Plugin 'rust-lang/rust.vim'
Plugin 'posva/vim-vue'
Plugin 'AutoComplPop'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree' "folder tree

Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required

" Tree 아이콘 변경
map <Leader>nt <ESC>:NERDTree<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:netrw_sort_by="time"
let g:NERDTreeSortOrder = ['\/$', '*', '\.swp$',  '\.bak$', '\~$', '[[-timestamp]]']
" 파일없이 vim만 틸 경우 자동으로 NERD Tree 실행.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 디렉토리를 vim으로 여는 경우 NERD Tree 실행.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"ColorTheme
"colorscheme molokai
colorscheme gruvbox

" Golang
"let g:go_fmt_autosave = 0

" Rust
let g:rustfmt_autosave = 1

" Coding 자동괄호 입력
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O
"

"Multiple cursors
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
