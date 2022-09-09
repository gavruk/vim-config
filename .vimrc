"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.

" Python Setting {
  set pythondll=/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.8/Python3
  set pythonhome=/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.8
  set pythonthreedll=/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.8/Python3
  set pythonthreehome=/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.8

  let g:python_host_prog = 'python'
  let g:python3_host_prog = 'python3'
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

Plug 'dense-analysis/ale'

"Plug 'mattn/emmet-vim'
"Plug 'Valloric/MatchTagAlways'
Plug 'mileszs/ack.vim'
Plug 'ap/vim-css-color'
"Plug 'fatih/vim-go'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'jiangmiao/auto-pairs'
"Plug 'mhinz/vim-startify'
"Plug 'othree/html5.vim'
Plug 'ryanoasis/vim-devicons'
"Plug 'yggdroot/indentline'
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
