colorscheme desert
syntax on
filetype on

set nocompatible
set backspace=2
set autoread
set nobackup
set noswapfile
set showmode
set showcmd
set showmatch

set autoindent
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
autocmd FileType make set noexpandtab

set ignorecase
set smartcase
set hlsearch
set incsearch

set number
highlight LineNr ctermfg=darkblue

set ruler
set scrolloff=10

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2

