set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
let g:startify_custom_header_quotes = [
    \ ['Programmer (noun.)', '1. A machine that turns coffee into code.'],
    \ ['Algorithm (noun.)', '1. Word used by programmers when...', "They don't want to explain what they did."],
    \ ['Hardware (noun.)', '1. The part of the computer you can kick.'],
    \ ['Q: What is a programmer`s', 'favourite place to hang out?', 'A: Foo Bar (ba dum tss)'],
    \ ['Debugging (noun.)', '1. You are a detective on a crime movie', 'where you are also the murderer.'],
    \ ['Q: Why do most Java programmers wear glasses?', 'A: Because the don`t C#...'],
    \ ['Once Chuck Norris`s computer gave him the', 'blue screen of death... And he took', 'a screenshot form it.'],
    \ ['"Hide and seek champion"', '    ;', 'since 1958'],
    \ ['// you sad? be happy.', 'if (sad == true) {', '    sad.stop();', '    beHappy();', '};']]
" set spell                 " enable spell check (may need to download language package)
set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
call plug#begin("~/.vim/plugged")
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
call plug#end()
" color schemes
 if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable
 " colorscheme evening
colorscheme dracula
" open new split panes to right and below
set splitright
set splitbelow
" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
