
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" cancel searched highlight
noremap <CR> :nohlsearch<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

let g:NERDTreeWinSize = 30
let g:ctrlp_show_hidden = 1
set nowrap

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

Bundle "gmarik/vundle"
Bundle "ack.vim"
Bundle "Align"
Bundle "calendar.vim"
Bundle "cocoa.vim"
Bundle "ctrlp.vim"
Bundle "Raimondi/delimitMate"
Bundle "vim-scripts/matchit.zip"
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/nerdtree"
Bundle "nginx.vim"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "fholgado/minibufexpl.vim"
Bundle "ervandew/supertab"
Bundle "taglist.vim"
Bundle "kchmck/vim-coffee-script"
Bundle "c9s/colorselector.vim"
Bundle "skammer/vim-css-color"
Bundle "tpope/vim-fugitive"
Bundle "michaeljsmith/vim-indent-object"
Bundle "digitaltoad/vim-jade"
Bundle "vim-javascript"
Bundle "briancollins/vim-jst"
Bundle "tpope/vim-markdown"
Bundle "seattlerb/minitest"
Bundle "vim-scripts/tlib"
Bundle "vim-multiple-cursors"
Bundle "jistr/vim-nerdtree-tabs"
Bundle "tangledhelix/vim-octopress"
Bundle "Lokaltog/vim-powerline"
Bundle "tpope/vim-ragtag"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-repeat"
Bundle "vim-ruby/vim-ruby"
Bundle "tpope/vim-haml"
Bundle "cakebaker/scss-syntax.vim"
Bundle "tpope/vim-surround"
Bundle "vimwiki"

syntax on
filetype indent on
