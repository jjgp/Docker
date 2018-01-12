set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe',  { 'do': './install.py --clang-completer --system-libclang' }
Plug 'myusuf3/numbers.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'

call plug#end()

set number " numbers.vim

" nerdtree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" Highlighting
highlight ColorColumn ctermbg=darkcyan
call matchadd('ColorColumn', '\%81v', 100)
call matchadd('ColorColumn', '\%151v', 100)

