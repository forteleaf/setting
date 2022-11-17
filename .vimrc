" Syntax Highlighting
if has ("syntax")
    syntax on
endif
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent

filetype off

set helplang=ko
set redrawtime=10000
set list lcs=trail:·,tab:├─

set autoindent
set cindent
set expandtab "tab을 spacebar로 처리

set nu
set hlsearch "검색에 음영 표시
set ignorecase smartcase "검색시 대소문자 검색 (tab 포함)
set cursorline "커서라인 강조
" You might have to force true color when using regular vim inside tmux as the
" colorscheme can appear to be grayscale with "termguicolors" option enabled.
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set termguicolors

set background=dark
set tabstop=4
set shiftwidth=4
set laststatus=2 "상태바
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line
set enc=utf-8
set fileencodings=utf8,euc-kr
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
" Plugin 'othree/html5.vim' "html5
Plugin 'pangloss/vim-javascript' "javascript
Plugin 'mxw/vim-jsx'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'ap/vim-css-color'
Plugin 'ekalinin/Dockerfile.vim' "Dockerfile

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
let NERDTreeShowHidden=1
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

""""""""""""""""""""""""" Golang
"let g:go_fmt_autosave = 0

set autowrite

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" Map keys for most used commands.
" Ex: `\b` for building, `\r` for running and `\b` for running test.
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

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
"set statusline+=%{FugitiveStatusline()}

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set rtp+=/usr/local/opt/fzf
