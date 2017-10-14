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
Plug 'gavruk/svg_snippets'

Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'paradigm/TextObjectify'
Plug 'moll/vim-node'
Plug 'godlygeek/tabular'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'terryma/vim-multiple-cursors'
Plug 'gregsexton/gitv'
Plug 'bling/vim-airline'
Plug 'tpope/vim-abolish'
Plug 'gregsexton/MatchTag', { 'do': 'cp ftplugin/html.vim ../../ftplugin/MatchTag/jsx.vim'}
Plug 'mileszs/ack.vim'
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
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/indenthtml.vim'
Plug 'othree/html5.vim'
Plug 'chrisbra/NrrwRgn'
Plug 'ryanoasis/vim-webdevicons'
Plug 'mxw/vim-jsx'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'vimwiki/vimwiki'
Plug 'posva/vim-vue'
Plug 'tomasiser/vim-code-dark'

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
