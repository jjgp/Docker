set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'valloric/youcompleteme',  { 'do': './install.py --clang-completer --system-libclang' }
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

