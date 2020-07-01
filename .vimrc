"==================="
"1.基本设置"
"==================="
set wildmenu"按TAB键时命令行自动补齐"
set ignorecase"忽略大小写"
set number "显示行号"
set visualbell"禁止响铃"
set ruler"显示当前光标位置"
set autoread"文件在Vim之外修改过，自动重新读入"
set autowrite"设置自动保存内容"
set autochdir"当前目录随着被编辑文件的改变而改变"
set nocp "使用vim而非vi"
set mouse=a"开启鼠标支持"
map 9 $"通过9跳转到行末尾,0默认跳转到行首"
map <silent>  <C-A>  gg v G "Ctrl-A 选中所有内容"
filetype on "启动文件类型检查"
filetype plugin on "运行vim加载文件类型插件"

"==================="
"2.程序开发相关的设置"
"==================="
"(1)使用%来选择语句块，然后使用快捷键zf来折叠"
set foldmethod=marker
"(2)注释：选中文本后，输入;c即可注释，输入;u 即可取消注释"
"(3) 编译和运行程序的快捷键"
map <silent>  <C-F5> :make %:r <CR>:!./%:r<CR>  "Ctrl+F5: 执行makefile文件"
map <silent>  \rr :!gcc  -Wall -g  %  -lm -o  %:r<CR> :!./%:r<CR>"\rr: 编译并运行当前文件的对应程序"
map  <silent>  \rc :!gcc  -Wall -g -c % <CR>"\rc:编译当前文件"
"(4)源文件和头文件之间快速切换"
nmap ,a :find %:t:r. ",a: 切换到任意文件。需要手动输入文件的后缀"
nmap ,c :find %:t:r.c<cr> ",c: 切换到同名c语言的源文件"
nmap ,C :tabf %:t:r.cpp<cr> ",C: 切换到同名c++的源文件,以tabpage形式打开"
nmap ,h :find %:t:r.h<cr>",h 切换到当前文件对于的头文件"
"(5)其他"
syn on "开启语法高亮功能"


"============"
"4. tabpages切换"
"============"
map < :tabpre<CR> 
map > :tabnex<CR>

"============="
"5. 设置缩进"
"============="
set cindent "c/c++自动缩进"
set smartindent
set autoindent"参考上一行的缩进方式进行自动缩进"
filetype indent on "根据文件类型进行缩进"
set softtabstop=4 "4 character as a tab"
set shiftwidth=4
set smarttab 

"================="
"6. 当前文件内搜索选项"
"================="
set hlsearch "开启搜索结果的高亮显示"
set incsearch "边输入边搜索(实时搜索)"

