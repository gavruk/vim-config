"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

" Before we do anything, lets get pathogen up 
execute pathogen#infect()


" file type detection
filetype on
" special indentation rules for file type
filetype indent on
" auto-completion rules for file type
filetype plugin on

syntax on

" OS Dependant things

let s:running_windows = has("win16") || has("win32") || has("win64")

if s:running_windows
  set backupdir=~/vimfiles/backup " where to put backup files
  set undodir=~/vimfiles/undo " where to put undo files
  set directory=~/vimfiles/temp " directory to place swap files in

  set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*

  let g:ctrlp_cache_dir = $HOME.'/vimfiles/ctrlp_cache'
else
  set backupdir=~/.vim/backup " where to put backup files
  set undodir=~/.vim/undo " where to put undo files
  set directory=~/.vim/temp " directory to place swap files in

  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

  let g:ctrlp_cache_dir = $HOME.'/.vim/ctrlp_cache'
endif

if has('gui_running')
  set guifont=Anonymous\ Pro\ for\ Powerline:h13
  let g:airline_powerline_fonts = 1
endif

runtime macros/matchit.vim

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Stop using Arrow keys ;)
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" ================================
" ================================
" ================================

colorscheme molokai
set background=dark

set fenc=utf-8 " UTF-8
set encoding=utf-8

set cmdheight=2

" Hide the mouse pointer while typing
set mousehide

set mousemodel=popup

" Set to auto read when a file is changed from the outside
set autoread

set splitbelow
set splitright

set formatoptions=tcqor
set cpoptions=aABceFsmq
"             |||||||||
"             ||||||||+-- When joining lines, leave the cursor between joined lines
"             |||||||+-- When a new match is created (showmatch) pause for .5
"             ||||||+-- Set buffer options when entering the buffer
"             |||||+-- :write command updates current file name automatically add <CR> to the last line when using :@r
"             |||+-- Searching continues at the end of the match at the cursor position
"             ||+-- A backslash has no special meaning in mappings
"             |+-- :write updates alternative file name
"             +-- :read updates alternative file name
set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
"             | | | | | | | | |
"             | | | | | | | | +-- "]" Insert and Replace
"             | | | | | | | +-- "[" Insert and Replace
"             | | | | | | +-- "~" Normal
"             | | | | | +-- <Right> Normal and Visual
"             | | | | +-- <Left> Normal and Visual
"             | | | +-- "l" Normal and Visual (not recommended)
"             | | +-- "h" Normal and Visual (not recommended)
"             | +-- <Space> Normal and Visual
"             +-- <BS> Normal and Visual
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the buffer

" Recognise lists like 1), 1., a), a., and so on
" Note that | need to be escaped AND preceeded by a literal backslash
set formatlistpat=^\\s*\\(\\d\\\|[-*]\\)\\+[\\]:.)}\\t\ ]\\s* "and bullets, too

" Use incremental searches
set incsearch
" highlight search terms
set hls

set clipboard+=unnamed

set backup
set history=99999 " big old history

set fileformats=unix,dos,mac " support all three, in this order

set laststatus=2 " always show the status line
set lazyredraw " do not redraw while running macros
set linespace=0 " don't insert any extra pixel lines betweens rows
set list " we do want to show tabs and tailing to ensure we get them out of my files
set listchars=tab:>-,trail:- " show tabs and trailing
set nostartofline " leave my cursor where it was

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

set nowrap " do not wrap line
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5

" Folding 
set foldenable " Turn on folding
set foldmethod=indent " Fold on the indent
set foldmarker={,} " use simple markers
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldnestmax=1 " I only like to fold outer functions
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds


" Show line numbers
set number
set numberwidth=5 " We are good up to 99999 lines


"default indent settings
set shiftwidth=4
set softtabstop=4
set tabstop=4
" Auto expand tabs to spaces
set expandtab
" Copy the indentation from the previous line, when starting a new line
set autoindent
" Automatically inserts one extra level of indentation in some cases (for example, after { )
set smartindent
" Be smart when using tabs ;)
set smarttab

" 1000 undos
set undolevels=1000

" Jump 5 lines when running out of the screen
set scrolljump=5

" Indicate jump out of the screen when 7 lines before end of the screen
set scrolloff=7

" Repair wired terminal/vim settings
set backspace=indent,eol,start

" CaseInsensitive searches
set ignorecase
set infercase " case inferred by default

set showcmd " show the command being typed
" Always show command or insert mode
set showmode
" Show line and column information
set ruler
" Show matching brackets
set showmatch

" Make sure that unsaved buffers that are to be put in the background are 
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden " you can change buffers without saving

set history=1000

set smartcase

" For regular expressions turn magic on
set magic

" Automatically read a file that has changed on disk
set autoread

" No annoying sound on errors
set noerrorbells
set visualbell
set t_vb=
set tm=500

set title

"tf: improves redrawing for newer computers
set ttyfast

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10
set timeoutlen=1200 " A little bit more time for macros

" Make completion more like bash
set wildmode=longest,list,full
set wildmenu
" Ignore compiled files
set wildignore=*.pyo,*.pyc,*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png " ignore these
set wildignore+=tags


set wildmode=list:longest " turn on wild mode huge list

" Cure hangs during compiles?
set swapsync=

set t_Co=256

" When completing by tag, show the whole tag, not just the function name
set showfulltag

set cul
hi CursorLine term=none cterm=none ctermbg=16

set dictionary=/usr/share/dict/words


" ================================
" ===========*MAPPING*============
" ================================

nnoremap ' `

nnoremap ` '

"nnoremap <Leader>q :q!<CR>
"nnoremap <Leader>s :w<CR>
"nnoremap <Leader>w :wq<CR>

inoremap jk <ESC>
imap jj <esc>

nmap <Leader>p <Plug>yankstack_substitute_older_paste
nmap <Leader>P <Plug>yankstack_substitute_newer_paste

nnoremap <leader><space> :noh<cr>

" Working with tabs"
noremap <silent> <Leader>tn :tabnew<CR>
noremap <silent> <Leader>th :tabprev<CR>
noremap <silent> <Leader>tl :tabnext<CR>
noremap <silent> <Leader>tc :tabclose<CR>

vmap <Tab> >gv
vmap <S-Tab> <gv

" Use the bufkill plugin to eliminate a buffer but keep the window layout
nmap ,bd :BD<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Quuickly edit abolish list
nmap <silent> <leader>ea :e ~/.vim/after/plugin/abolish.vim<CR>

nnoremap <silent> <leader>no :e ~/notes.txt<CR>

nnoremap j gj
nnoremap k gk

nnoremap <leader>. :CtrlPTag<cr>


map <Leader>d :NERDTreeToggle<CR>

" split windows
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

" moving around
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h

map <F2> :ls<CR>:b<Space>
nnoremap <F3> :b#<CR>
nnoremap <F4> :TagbarToggle<CR>
nnoremap <F5> :GundoToggle<CR>

imap <c-e> <c-o>$
imap <c-a> <c-o>^

imap <C-o> <ESC>a<Plug>snipMateNextOrTrigger
smap <C-o> <Plug>snipMateNextOrTrigger



" Clean trailing whitespace
nnoremap <leader>cw mz:%s/\s\+$//<cr>:let @/=''<cr>`z

" Select all
nnoremap vaa ggvGg_
nnoremap Vaa ggVG


" ================================
" ===========*AUTOCMD*============
" ================================

if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \ if &omnifunc == "" |
        \   setlocal omnifunc=syntaxcomplete#Complete |
        \ endif
endif

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
"autocmd FileType go set omnifunc=gocomplete#Complete

if has("autocmd")
  " Save when losing focus
  au FocusLost * :silent! wall

  " Resize splits when the window is resized
  au VimResized * :wincmd =

  " Make sure Vim returns to the same line when you reopen a file.
  augroup line_return
    au!
    au BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \     execute 'normal! g`"zvzz' |
          \ endif
  augroup END

  augroup vimrcAu
    " Clear!
    au!

    autocmd Syntax javascript setlocal isk+=$

    " Things that use two spaces rather than four
    au BufRead,BufNewFile *.rb,*.rhtml set sw=2 sts=2 " ruby likes two 
    au BufRead,BufNewFile *.js set sw=2 sts=2

    " Go setup assumptions: golint, gocode, gotags all in path
    "au BufRead,BufNewFile *.go set noexpandtab sw=4 sts=4 syntax=go listchars=tab:\|\ ,trail:- " Go uses tabs
    "au BufWritePre *.go Fmt
    "au BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

    au BufRead,BufNewFile MakeFile,Makefile,makefile set noexpandtab sw=8 sts=8 syntax=make listchars=tab:\|\ ,trail:- " so does make

    " Override types
    au BufNewFile,BufRead *.ahk set filetype=ahk " Autohotkey
    au BufNewFile,BufRead *.ps1 set filetype=ps1 " Powershell
    au BufNewFile,BufRead *.md set filetype=markdown spell " Markdown and spelling on
    au BufNewFile,BufRead *.dtl set filetype=htmldjango " Django Templates

    au BufNewFile,BufRead *.ejs set filetype=html

    " ctags
    au BufWritePost *.c,*.cpp,*.h,*.go,*.js silent! !ctags -R &

    " markdown shortcut
    au BufRead,BufNewFile *.md set filetype=markdown
  augroup END
endif


" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" ==================================
" ==============*CTRLP*=============
" ==================================
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_max_height = 30
let g:ctrlp_max_files = 100000
let g:ctrlp_max_depth = 100
let g:ctrlp_follow_symlinks = 0
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)|(node_modules|bower_components|target|dist|build|public/lib)$',
      \ 'file': '\v\.(exe|so|dll|min.js|css|map)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }


" ==================================
" =============*TagBar*=============
" ==================================

let g:tagbar_left = 0
let g:tagbar_ctags_bin = 'ctags'
" requires gotags in path
" go get -u github.com/jstemmer/gotags
let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
      \ 'p:package',
      \ 'i:imports:1',
      \ 'c:constants',
      \ 'v:variables',
      \ 't:types',
      \ 'n:interfaces',
      \ 'w:fields',
      \ 'e:embedded',
      \ 'm:methods',
      \ 'r:constructor',
      \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
      \ 't' : 'ctype',
      \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
      \ 'ctype' : 't',
      \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
      \ }


" ==================================
" ===========*Syntastic*============
" ==================================
let g:syntastic_enable_highlighting = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = 'E'
let g:syntastic_style_error_symbol = 'S'
let g:syntastic_warning_symbol = 'W'
let g:syntastic_style_warning_symbol = 'S'
let g:syntastic_always_populate_loc_list = 1

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>


let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_width = 25
let g:tagbar_iconchars = ['+', '-']

let g:ack_default_options = " -s -i -H --nocolor --nogroup --column"

" ==================================
" ============*NERDTree*============
" ==================================

let NERDTreeMapOpenInTab='<Leader>n'
let NERDTreeIgnore = ['\.beam', '\.pyc', 'ebin', 'bin', 'pkg', '\.so', '\.dll', 'tags']
let g:NERDTreeWinSize = 40
