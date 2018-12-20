set nocompatible              " be iMproved, required
filetype indent plugin on     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Color Schemes
Plugin 'sjl/badwolf'
Plugin 'svjunic/RadicalGoodSpeed.vim'
Plugin 'vim-scripts/summerfruit256.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ayu-theme/ayu-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/csapprox'

Plugin 'vim-scripts/taglist.vim'

Plugin 'ervandew/supertab'
Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'Raimondi/delimitMate'

Plugin 'junegunn/goyo.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'plasticboy/vim-markdown'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable syntax highlighting
syntax on

set hidden
set wildmenu
set showcmd
" Highlights searches in search mode
set hlsearch

" Ignores case in searches, except when using capital letters
set ignorecase
set smartcase


set backspace=indent,eol,start

set autoindent

set nostartofline
set ruler
set visualbell
set confirm
set number

" Indentation Options
set shiftwidth=4
set softtabstop=4
set expandtab

set t_Co=256
let g:solarized_termcolors=256
"set termguicolors

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"colorscheme molokai_dark

"colorscheme badwolf
"colorscheme radicalgoodspeed

" Firefox like tab navigation
nnoremap <silent> <C-o> :tabp<CR>
nnoremap <silent> <C-p> :tabn<CR>
nnoremap <silent> <C-t> :tabnew<CR>

" Toggle Tag
nnoremap <silent> <C-a> :TlistToggle<CR>

