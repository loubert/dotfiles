" A vimrc

set nocompatible   " use vim settings. this must be done first.
let mapleader=","  " default is backslash, comma is better
colorscheme desert " pretty good color scheme
syntax enable

" Indentation options
set expandtab     " use spaces instead of tabs
set shiftwidth=4  " number of columns shifted by reindent and cstyle autoindent
set tabstop=4     " tabs take up 4 spaces of display
set softtabstop=4 " number of spaces to insert instead of tabbing
set smarttab      " use shiftwidth for tab and backspace
filetype indent plugin on
set cinoptions=:0,g0,N-s,10

" Search options
set incsearch  " do incremental searching
set hlsearch   " highlight the last used search pattern
set ignorecase " case-insensitive search, except...
set smartcase  " case-sensitive when the string has uppercase letters
nnoremap <leader><space> :nohlsearch<CR>

" wildignore (wig) masks

" Buffer settings
set hidden " Allow modified buffers to be hidden
nnoremap <leader>h :bprev<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>bq :bp <BAR> bd #<CR>
nnoremap <leader>ss :mksession!<CR>
nnoremap <leader>sl :source Session.vim<CR>

" Word under cursor stuff
nnoremap <silent> <leader>/ :let @/= '\<' . expand('<cword>') . '\>' <BAR> set hls <CR>
nnoremap <leader>r gd[[{V%::s///gc<left><left><left>
nmap <leader>R <leader>/:%s///g<left><left>

" Miscellany
set backspace=indent,eol,start " allow backspacing over the right stuff in insert mode
" set backupdir=$HOME/.vim/backup
set nobackup " don't keep a persistent backup file
set undodir=$HOME/.vim/undo
set undofile " keep an undo file
set directory=$HOME/.vim/swap//
set history=1000 " keep 1000 lines of command history
set tabpagemax=50 " maximum number of tab pages to open (with -p or :tab all)
set ruler " show the cursor position at all times
set relativenumber " display relative line numbers
set number " display absolute line number of current line
set showcmd " display incomplete commands
set showmatch " show matching bracket when you type a closing one
set cursorline " underline the line containing the cursor
set scrolloff=1 " minimum number of screen lines to keep above and below cursor
set sidescroll=1 " (unused) determines number of columns to scroll
set sidescrolloff=2 " (unused) like scrolloff but horizontal
set display+=lastline " display as much of the last line as possible
set wildmenu " tab completion brings up a menu of options
set wildmode=longest:full,full " tab completion brings up a menu of options
set wildignorecase " ignore case in filename wild completion
set virtualedit="" " turn off editing of characters that don't exist
set laststatus=2 " always show status line
set statusline=[%n]\ %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set ttimeout " makes escape sequence timeout?
set ttimeoutlen=100
set nrformats-=octal " for ^A and ^X increment and decrement
set complete-=i " inclusive completion can result in recursive nightmares
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+ " for list-mode (:set list)
set formatoptions+=j " remove comment leader when joining commented lines
setglobal tags-=./tags tags-=./tags; tags^=./tags; " user upward search for tagfile (but don't duplicate)
set autoread " automatically read file if it is modified outside of vim
set viminfo^=! " make g:UPPER_CASE variables persist in .viminfo
set sessionoptions-=options " saving options in session files causes problems
set viewoptions-=options " saving options in view files causes problems
set colorcolumn=80 " standard conservative character limit

" Move across visual lines by default
nnoremap j gj
nnoremap k gk

" Escape key is so very, very far away
inoremap jk <Esc>
inoremap kj <Esc>

" Break undo sequence for line delete and previous word delete
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

