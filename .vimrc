" vundle 安装和配置
" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" 将下面配置文件加入到.vimrc文件中

set nocompatible " 必须
filetype off     " 必须

" 将Vundle加入运行时路径中(Runtime path)
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" 使用Vundle管理插件，必须
Bundle 'gmarik/vundle'

" 其他插件

" 显示代码缩进
Bundle 'nathanaelkane/vim-indent-guides'  

" 语法检查错误
Bundle 'scrooloose/syntastic'

"buf跳转：<Leader>be, <Leader>bs, <Leader>bv
Bundle 'bufexplorer.zip'

"快速注释插件，使用说明在下方
Bundle 'scrooloose/nerdcommenter'

" 用于括号与引号自动补全
Bundle 'jiangmiao/auto-pairs'

Bundle 'Lokaltog/vim-powerline'

"快捷键一览
"F4:查看代码缩进

"------------------------------------------------------------------------------
" < nathanaelkane/vim-indent-guides 插件配置 >
"------------------------------------------------------------------------------
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <F4> :IndentGuidesToggle<CR>
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" < scrooloose/nerdcommenter 插件配置 >
"------------------------------------------------------------------------------
" 以下为插件默认快捷键，Leader 默认为\， 可以使用 let g:mapleader = "," 修改之
" <leader>cc 注释当前选中文本，如果选中的是整行则在每行首添加//, 如果选中一行的部分内容则在选中部分前后添加分别 /、/；
" <leader>cu 取消选中文本块的注释
" <Leader>ci 以每行一个 /* */ 注释选中行(选中区域所在行)，再输入则取消注释
" <Leader>ca 在/*...*/与//这两种注释方式中切换（其它语言可能不一样了）
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" < vim-powerline 插件配置 >
"------------------------------------------------------------------------------
set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'
set encoding=utf-8
" -----------------------------------------------------------------------------

if filereadable(expand("~/.vimrc.base"))
  source ~/.vimrc.base
endif

