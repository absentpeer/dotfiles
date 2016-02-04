""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Maintainer: Benjamin Petersen
"
" Sections:
" 1  -> General
" 2  -> NVIM user interface
" 3  -> Colors and fonts
" 4  -> Files and backups
" 5  -> Text, tab, and indent related
" 6  -> Moving around, tabs, and buffers
" 7  -> Status line
" 8  -> Editing mappings
" 9  -> vimgrep searching and cope displaying
" 10 -> Spell checking
" 11 -> Misc
" 12 -> Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1  -> General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set how many lines of history to remember:
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside:
set autoread

" Set a map leader. In this case we will use the comma becase it is not bound 
" to anything in vim and is easier to access than \
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file (useful for handing premission denied errors)
command W w !sudo tee % > /dev/null

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2  -> NVIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show current position
set ruler

" Show line numbers
set number

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when abandoned
set hid

" Configure backspace so it acts as it should:
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" If the mouse can work in the terminal emulator, enable it
if has('mouse')
    set mouse=a
endif

" Ignore case when searching
set ignorecase

" When searching, be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Make search act like search in modern web browsers:
set incsearch

" Don't redarw while execting macros (for perfomrance)
set lazyredraw

" For regular expressions, turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add extra margin on the left
set foldcolumn=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 3  -> Colors and fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable sytax highlighting
syntax enable

" Set color scheme
let g:base16_shell_path='/home/ben/builds/base16-builder/output/shell/'
let base16colorspace=256
set t_Co=16
colorscheme base16-eighties
set background=dark

set nofoldenable

if has("gui_running")
    set background=light
    set guioptions-=T
    set guioptions-=e
    set t_Co-256
    set guitablabel=%M\ %t
endif

" Set utf8 as the standard encoding and en_US as the standard language:
set encoding=utf8

" Use unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 4  -> Files and backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off backup because it's annoying
set nobackup
set nowb
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 5  -> Text, tab, and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart about tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Smarter indents and line behavior:
set ai "auto indent
set si "smart indent
set formatoptions=1
set lbr
set nolist
set wrap "wraps lines

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 6  -> Moving around, tabs, and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long, wrapped lines as break lines
map j gj
map k gk

" Map space to / (search) and ctrl space to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed (note: <cr> = carraige return
" or enter!
map <silent> <leader><cr> :noh<cr>

" Smart movement between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :bufdo bd<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 7  -> Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show the status line:
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Show the status mode in the status line:
set showmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 8  -> Editing mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 9  -> vimgrep searching and cope displaying
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 10 -> Spell checking
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 11 -> Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 12 -> Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 13 -> Executing programs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
