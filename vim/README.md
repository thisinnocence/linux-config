# Vim 使用小技巧

## Vim cheetsheet

![vim-cheetsheet](vim-cheat-sheet.gif)

## 常用命令

```bash
# common
u                   # 撤销undo
ctrl + r            # 反撤销redo
u<n>                # 撤销n次
U                   # 撤销当前行所有修改
.                   # 重复上一次操作, 非常有用！
ctrl + v            # 进入矩阵块选中模式
daw                 # 光标在单词中也可以删除一个单词, a word
J                   # join 合并两行
:read !ls           # 读取命令的输出
:read !date         # 读取日期
:! <cmd>            # 执行命令cmd
:shell              # 新开一个shell
ctrl + [            # == ESC (ctrl + c)
:qa                 # 退出所有窗口
:set list           # 显示空白符,关闭 set nolist
:help <cmd>         # 查cmd命令的帮助
K                   # 查看光标所在单词的帮助

# 光标移动
H                # 移动到屏幕顶端high
M                # 移动到屏幕中部middle
L                # 移动到屏幕中部low
ctrl + o         # 跳转光标的上一次位置
ctrl + i         # 跳转光标的下一次位置

# vimdff
vimdiff f1 f1       # 对比两个文件的差异
dp                  # diff put, 差异部分同步到对端窗口

# 自动补全
ctrl + p            # 插入模式下联想已经输入过的单词
ctrl + X, ctrrl + L # 插入模式下自动补全行

# 录制命令，类似gdb的command定制脚本
q{a~z}           # 进入录制，录制到a寄存器
q                # 结束录制
qA               # 想寄存器a追加录制的命令
3@a              # 执行3遍录制的命令
@@               # 执行上次自己录制的命令

# 块编辑，有时候批量注释代码
ctrl + v         # 快选中
I{string}        # 大写I插入，只在第一行插入
Esc              # 所有之前块选中的都会插入了

# 后台
ctrl + z         # 挂起当前任务到后台
jobs             # 查看后台挂起的任务
fg <n>           # 把后台挂起的任务n调度到前台,n可省

# 分屏
:sp <file>       # split  水平分屏
:vs <file>       # vsplit 垂直分屏
ctrl+ww          # 两次w，在分屏间跳转
ctrl+w <hjkl>    # 跳转分屏
ctrl+w <+>       # 扩大当前分屏
ctrl+w <->       # 减小当前分屏
:only            # 取消分屏

# 多标签
:tabe            # tab edit 新标签打开
gt               # go tab 在tab中切换
:tabc            # tab close 关闭标签页

# 多buffer
:e file          # 新buffer中打开file进行edit
:ls              # 列出当前缓冲区
:b n             # 去第n个缓冲区

# 折叠
zR               # 打开所有折叠
zc               # 折叠当前行current
zo               # 打开当前折叠open
zfap             # zf一个操作符, ap一个文本块，创建折叠

# 编辑
:x               # 如果文件有更改，则保存后退出, 否则直接退出
a                # 光标的下一个位置插入 (append)
A                # 行位插入
r                # 替换光标所在处的字符一次   (r - replace)
R                # 持续替换光标所在处的字符
cc               # 修改整行，删除光标所在行，并进入插入模式 (c - change)
cw               # 修改单词
C                # 修改光标导航到行尾巴 == d$, i == D, i
D                # 删除内容到行尾,删除内容都放入了可供粘贴的缓冲区
~                # 反转光标或选中的字母的大小写

# 缩进
>>               # 整行向右缩进
<<               # 整行向做缩进
==               # 自动缩进
=%               # 光标在括号处，缩进整个语句块 

# 查找
/xx               # 查找xx, n向下，N反向
?xx               # 查找xx, n向上，N反向
:noh              # 取消搜索高亮，no highlight
*                 # 选中并正向查找光标所在的词
#                 # 选中并反向查找光标所在的词
:set ignorecase   # 搜索忽略大小写，可以tab联想输入
:set noignorecase # 不忽略
/<up/down arrow>  # 可以联想出历史输入过的词
:set hlsearch     # 打开设置高亮
:jumps            # 列出历史跳转列表
fx                # 找到本行字母x，再按分号跳到下一处

# 替换
:s/old/new/g      # 用new替换行内old
:2,5s/old/new/g   # 替换2到5行
:%s/old/new/g     # 全文替换

# 区间内
vi"  # 选中光标所在“引号内的内容，in "
vi'  # in '
vi[  # in [
vi(  # in (
vi{  # in {
# 类比还有: ci( di(, 修改删除括号内的

# 字符
$  # 行尾
^  # 行首非空白字符
0  # 行首

# 词操作
w  # 后一词词首
W  # 后一词词首，忽略标点
e  # 后一词词尾
E  # 后一词词尾，忽略标点
b  # 前一词词首
B  # 前一次词首，忽略标点

# 句操作
)  # 后一句句首
(  # 前一句句首
%  # 配合括号寻找另一半

# 行操作
G  # 最后一行非空白字符
nG # 第n行，类似 :n
gg # 第一行第一个非空白字符

# 段操作
}  # 下一段段首, 同样可配合%找配对
{  # 上一段段首

# 页操作
ctrl + f  # 下一页  forward
ctrl + b  # 上一页  back
ctrl + d  # 下半页  down
ctrl + u  # 上半页  up

# 复制粘贴
v         # 进入view mode
V         # 行选中模式
d         # 删除内容放入缓冲区可供粘贴
y         # yank
yy        # 复制所在行
y0        # 复制光标到行首
yG        # 复制光所在行到文件末尾行
ygg       # 复制光标所在行到开头所有行, 类似: c修改 d删除
p         # 粘贴到下一处paste
P         # 粘贴到上一处
```

# 参考 

- [Vim从入门到精通](https://github.com/wsdjeg/vim-galore-zh_cn)
- [笨方法学Vimscript](https://www.kancloud.cn/kancloud/learn-vimscript-the-hard-way/49321)
- [use_vim_as_ide - c/c++](https://github.com/yangyangwithgnu/use_vim_as_ide)

