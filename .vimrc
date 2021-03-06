"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.

" Python Setting {
  set pythondll=/usr/local/Frameworks/Python.framework/Versions/3.9/Python
  set pythonhome=/usr/local/Frameworks/Python.framework/Versions/3.9
  set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.9/Python
  set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.9
" }
"
set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'

Plug 'Lokaltog/vim-easymotion'

Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'Quramy/tsuquyomi'

Plug 'vim-airline/vim-airline'

Plug 'w0rp/ale'

"Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways'
Plug 'mileszs/ack.vim'
Plug 'ap/vim-css-color'
"Plug 'fatih/vim-go'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'jiangmiao/auto-pairs'
"Plug 'mhinz/vim-startify'
Plug 'othree/html5.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'yggdroot/indentline'
"Plug 'mbbill/undotree'

Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'


Plug 'morhetz/gruvbox'
"Plug 'altercation/vim-colors-solarized'
"Plug 'tomasiser/vim-code-dark'

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
