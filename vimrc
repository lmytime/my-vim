"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set default encoding utf-9
set encoding=utf-8

" Use space key as the map leader key.
let mapleader=" "

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number
set norelativenumber

" Do wrap lines. Do not allow long lines.
set wrap

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Show partial command you type in the last line of the screen.
set showcmd

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Use highlighting when doing a search.
set hlsearch
exec "nohlsearch"

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Use mouse.
set mouse=a

" Draw the background color
let &t_ut=''

" Use space characters instead of tabs.
set expandtab

" Display tab width to 2 spaces.
set tabstop=2

" Set shift width to 2 spaces.
set shiftwidth=2

" Do not save backup files.
set nobackup

" Set tab width to 2 spaces.
set softtabstop=2

" Show white space characters as a character
set list
set listchars=tab:▸\ ,trail:▫

" Do not let cursor at the end of page.
set scrolloff=5

" Disable long line auto broken
set tw=0

set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99

" Let cursor different in different mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" STATUS LINE ------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}


" Custom key map
noremap m j
noremap j h
noremap K 5k
noremap M 5j
noremap J 5h
noremap L 5l
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

" split window
map sl :set splitright<CR>:vsplit<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sm :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>m <C-w>j
map <LEADER>j <C-w>h
map <LEADER>k <C-w>k

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map fu :tabe<CR>
map fj :-tabnext<CR>
map fl :+tabnext<CR>

" Use molokai colorscheme
colorscheme molokai
