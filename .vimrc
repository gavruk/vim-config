"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

" Before we do anything, lets get pathogen up 
execute pathogen#infect()

source ~/.vim/.vimrc.settings
source ~/.vim/.vimrc.bindings
source ~/.vim/.vimrc.autocmd
source ~/.vim/.vimrc.func
source ~/.vim/.vimrc.plugin

" source vimrc.local is exists
if filereadable(glob(".vimrc.local"))
  source .vimrc.local
endif
