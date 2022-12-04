" Keep 1000 items in the hisotry.
set history=1000

" Show the cursor position.
set ruler

" Show the line number.
" set number
" set relativenumber

" Highlight in searching.
set hlsearch

" Turn on incremental search.
set incsearch

" Show incomplete commands.
set showcmd

" Show a menu when using tab completion.
set wildmenu

" Create backup file like 'hoge.txt~'.
" set backup

" Don't break mid-word.
set lbr

" Turn on auto indent and smart indent.
set ai
set si

" Use spaces instead of tabs
set expandtab

" Enable smart tabs
set smarttab

" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

" switch buffers without save
set hidden

" key mapping (map KEY KEYSTROKES)
inoremap <silent> jj <ESC>

" yank to system clipboard by default (without using "*)
set clipboard+=unnamed

" map space as a leader
let mapleader = "\<Space>"

"move around in insert
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

"terminal like mapping in insert mode
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$

"syntax highlight
syntax enable

" backspace in insert mode
set backspace=indent,eol,start

" turn off beep
set belloff=all

"plugin manager
let s:jetpack_root = expand('~/.vim/jetpack-vim')
let s:jetpack_vim = s:jetpack_root . '/jetpack.vim'

if !filereadable(s:jetpack_vim)
  execute '!curl -fLo' s:jetpack_vim '--create-dirs'
    \ 'https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim'
  let s:jetpack_sync = 1
endif
execute 'source ' . s:jetpack_vim

call jetpack#begin(s:jetpack_root)
  call jetpack#add('tpope/vim-commentary')
  call jetpack#add('vim-scripts/ReplaceWithRegister')
call jetpack#end()

if get(s:, 'jetpack_sync', 0)
  call jetpack#sync()
endif
