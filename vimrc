syntax on                          " 语法高亮
set number                         " 显示行号
set ruler                          " 打开状态栏标尺
set showmatch                      " 高亮显示匹配的括号
set matchtime=2                    " 匹配括号高亮的时间(单位0.1s)
set scrolloff=10                   " 光标到屏幕底端保留10行
set cursorline                     " 高亮光标所在行
set hlsearch                       " 高亮搜索
set incsearch                      " 及时搜索
set showcmd                        " 显示输入的命令
set showmode                       " 显示模式
set mouse=a                        " 开启鼠标支持
set nocompatible                   " 不兼容vi
set nowrap                         " 不自动折行
set lbr                            " 不在单词中折行
set autoread                       " 文件被修改时自动载入

set tabstop=4       " Tab键的宽度
set shiftwidth=4    " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4   " 使得按退格键时可以一次删掉 4 个空格

" 状态栏
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2

filetype on           "检测文件类型
filetype plugin on    "加载文件类型插件

set history=1000
set autoread
set nobackup
set noswapfile

