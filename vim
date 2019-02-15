1、首先卸载之前的Vim编辑器

建议在管理员权限下操作

卸载 sudo apt-get remove vim-common或者sudo apt-get remove vim

安装 sudo apt-get install vim

这个时候跟之前的编辑器差不了多少还是不好用

2、设置Vim编辑器

vi /etc/vim/vimrc 进入文件在文件的末尾加上下面几条命令

c语言缩进：在末尾添加一行：set cindent

1) 打开vimrc，添加以下语句来使得语法高亮显示：
syntax on
2) 如果此时语法还是没有高亮显示，那么在/etc目录下的profile文件中添加以下语句：
export TERM=xterm-color
 1）设置（软）制表符宽度为4：
                            set tabstop=4
                            set softtabstop=4
              2）设置缩进的空格数为4
                          set shiftwidth=4
              3）设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取 消设置：
set autoindent
              4）设 置使用 C/C++ 语言的自动缩进方式：
                          set cindent
              5）设置C/C++语言的具体缩进方式：(这一句在修改的时候会有一点问题，可以删去)
                            set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
 　　　   6）如果想在左侧显示文本的行号，可以用以下语句：
                          set nu
              7）最后，如果没有下列语句，就加上吧：
if &term=="xterm"
set t_Co=8
             set t_Sb=^[[4%dm
set t_Sf=^[[3%dm
endif
