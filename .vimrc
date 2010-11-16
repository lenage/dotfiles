"*************
"vim配置文件
"lendage@gmail.com
"By 夜深
"*************

"去掉VI的一致性问题
set nocompatible
"显示行号
set nu
filetype plugin on
filetype indent on
set history=1000
syntax on
"自动缩进
set autoindent
set smartindent
" 设置tab显示的空格数
set tabstop=4
set shiftwidth=4
set showmatch
set hls
"禁止自动换行
"set nowrap
"在输入命令时列出匹配项目
set wildmenu
"显示光标位置
set ruler
"分割窗口时保持等宽/高
set equalalways

"""""""""""""""""""""
"NERDTree插件快捷键
"""""""""""""""""""""
nmap <silent><leader>nt :NERDTree<CR>
"修改文件之后自动备份
"if has("vms")
"set nobackup
"else
"set backup
"endif
"设定文件浏览器目录为当前目录
set bsdir=buffer
set autochdir
"设置编码
set enc=utf-8
"设置编码文件
set fenc=utf-8
"设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"中文帮助
if version > 603
set helplang=cn
endif
"按F3插入当前时间
nmap <F3> <C-R>=strftime("%Y-%m-%d %A %H:%M ")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %A %H:%M ")<CR>
"显示自动完成菜单
"set wildmenu
"显示编辑模式
"set showmod
"set showmatch
"这儿添加的是一些多余的内容
"vimwiki
let g:vimwiki_html_header_numbering = 2 
"let g:vimwiki_folding = 1 
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': '~/vimwiki/', 'path_html': '~/vimwiki/html/','html_header': '~/vimwiki/template/header.tpl','html_footer': '~/vimwiki/template/footer.tpl',}] 
