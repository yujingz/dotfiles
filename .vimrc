set nocompatible

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

" Vundle
filetype on " without this vim emits a zero exit status, later, because of :ft off
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" install Vundle bundles
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

let g:NERDTreeWinSize = 30
let g:ctrlp_show_hidden = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set nowrap
set clipboard=unnamed

vnoremap <silent> <Enter> :EasyAlign<cr>

autocmd! bufwritepost .vimrc source %

filetype indent on

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader>a :Ack<space>
nmap <leader>d :NERDTreeToggle<CR>


" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

let g:syntastic_ruby_checkers=['rubocop']
let g:gitgutter_enabled = 0
let g:multi_cursor_exit_from_visual_mode = 0

