set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" install Vundle plugins
if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

call vundle#end()
filetype indent on

syntax enable

map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" cancel searched highlight
noremap <CR> :nohlsearch<CR>

au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufReadPost *.go setl shiftwidth=4 expandtab

let g:NERDTreeWinSize = 30
let g:ctrlp_show_hidden = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set nowrap
set clipboard=unnamed
set synmaxcol=500

vnoremap <silent> <Enter> :EasyAlign<cr>

autocmd! bufwritepost .vimrc source %

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
" ,b open ctrl p with only buffers
nnoremap <leader>b :CtrlPBuffer<CR>
nmap <leader>a :Ag<space>
nmap <leader>d :NERDTreeToggle<CR>
nmap <silent> gw    "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>

" Vim-Go
au FileType go nmap <leader>r <Plug>(go-run)
let g:go_fmt_command = "goimports"

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'govet']

let g:multi_cursor_exit_from_visual_mode = 0

let g:jsx_ext_required = 0

set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc,dist/**
set autoread
