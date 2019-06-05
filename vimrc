syntax on
set number
set ruler
set mouse=a
set showmode
set showcmd
set cursorline
set nocompatible
set autoread
set nobackup
set noswapfile
set history=1000
set hlsearch
set incsearch

set showmatch       " 高亮显示匹配的括号
set matchtime=2     " 匹配括号高亮的时间(单位0.1s)
set scrolloff=10    " 光标到屏幕底端保留10行
set nowrap          " 不自动折行
set lbr             " 不在单词中折行
set tabstop=4       " Tab键的宽度
set expandtab       " Tab自动转空格
set shiftwidth=4    " 设定 < 和 > 命令移动时的宽度为4
set softtabstop=4   " 使得按退格键时可以一次删掉4个空格
autocmd FileType make set noexpandtab

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2

filetype on
filetype plugin on

colorscheme desert

