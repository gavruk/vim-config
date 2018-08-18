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

Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'paradigm/TextObjectify'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'gregsexton/gitv'
Plug 'bling/vim-airline'
Plug 'Valloric/MatchTagAlways'
Plug 'mileszs/ack.vim'
Plug 'groenewege/vim-less'
Plug 'elzr/vim-json'
Plug 'ap/vim-css-color'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/indenthtml.vim'
Plug 'othree/html5.vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'tomasiser/vim-code-dark'

Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'

call plug#end()

let s:running_windows = has("win16") || has("win32") || has("win64")
let s:colorful_term = (&term =~ "xterm") || (&term =~ "screen")
let s:gui_running = has('gui_running')

an TouchBar.EnterFullScreen          <Nop>

source ~/.vim/.vimrc.settings
source ~/.vim/.vimrc.mappings
source ~/.vim/.vimrc.autocmd
source ~/.vim/.vimrc.func
source ~/.vim/.vimrc.plugin

" source vimrc.local is exists
if filereadable(glob(".vimrc.local"))
  source .vimrc.local
endif
