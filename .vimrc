"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'paradigm/TextObjectify'
Plug 'moll/vim-node'
Plug 'godlygeek/tabular'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'mattn/emmet-vim'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'terryma/vim-multiple-cursors'
Plug 'gregsexton/gitv'
Plug 'bling/vim-airline'
Plug 'tpope/vim-abolish'
Plug 'gregsexton/MatchTag'
Plug 'mileszs/ack.vim'
Plug 'gavruk/svg_snippets'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'sjl/gundo.vim'
Plug 'groenewege/vim-less'
Plug 'elzr/vim-json'
Plug 'ap/vim-css-color'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'altercation/vim-colors-solarized'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'benmills/vimux'
Plug 'tpope/vim-vividchalk'
Plug 'airblade/vim-gitgutter'
Plug 'jelera/vim-javascript-syntax'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Raimondi/delimitMate'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/indenthtml.vim'
Plug 'othree/html5.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'ryanoasis/vim-webdevicons'
Plug 'mxw/vim-jsx'
Plug 'gavocanov/vim-js-indent'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'

call plug#end()

let s:running_windows = has("win16") || has("win32") || has("win64")
let s:colorful_term = (&term =~ "xterm") || (&term =~ "screen")
let s:gui_running = has('gui_running')


source ~/.vim/.vimrc.settings
source ~/.vim/.vimrc.mappings
source ~/.vim/.vimrc.autocmd
source ~/.vim/.vimrc.func
source ~/.vim/.vimrc.plugin

" source vimrc.local is exists
if filereadable(glob(".vimrc.local"))
  source .vimrc.local
endif
