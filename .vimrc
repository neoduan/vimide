source /home/q/tools/game_team/vimide/.vimrc

set nocompatible
filetype off
" 将Vundle加入运行时路径中(Runtime path)
set rtp+=~/.vim/bundle/vundle
"call vundle#rc()

" 使用Vundle管理插件，必须
Bundle 'gmarik/vundle'

" 其他插件
" 显示代码缩进
Bundle 'Yggdroot/indentLine'

" 语法检查错误
Bundle 'scrooloose/syntastic'

"buf跳转：<Leader>be, <Leader>bs, <Leader>bv
Bundle 'bufexplorer.zip'

"快速注释插件，使用说明在下方
Bundle 'scrooloose/nerdcommenter'
"Just one NERDTree, always and ever,始终打开tab页
Bundle 'jistr/vim-nerdtree-tabs'

" 用于括号与引号自动补全
Bundle 'kana/vim-smartinput'

" 状态栏
Bundle  'bling/vim-airline'
" 支持git
Bundle 'tpope/vim-fugitive'

"文件管理器
Bundle 'scrooloose/nerdtree'

" 关键字补全、文件路径补全、tag补全
Bundle 'Shougo/neocomplcache'

"TAB键增加功能
Bundle 'ervandew/supertab'

"代码符号
Bundle 'majutsushi/tagbar'

"查找文件
Bundle 'ctrlp.vim'

"搜索
"sudo curl http://beyondgrep.com/ack-2.14-single-file > /usr/local/bin/ack && chmod 0755 !#:3
Bundle 'mileszs/ack.vim'

"go 环境
Bundle 'fatih/vim-go'

"快捷键一览
"F3  : 进入粘贴模式
"F4  : 查看代码缩进
"F5  : Ack搜索文件
"F6  : 进入查找文件模式
"F10 : 展开目录树
"F11 : 展开代码树

"------------------------------------------------------------------------------
" < nathanaelkane/vim-indent-guides 插件配置 >
"------------------------------------------------------------------------------
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term=0
let g:indentLine_char='|'
" 快捷键 F4 开/关缩进可视化
nmap  <F4> :IndentLinesToggle<CR>
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
" < vim-airline git 插件配置 >
"------------------------------------------------------------------------------
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme="tomorrow"
set laststatus=2
"let g:airline_section_a = airline#section#create(['%{fugitive#statusline()}'])
"let g:airline_section_x = airline#section#create(['%{getcwd()}'])
let g:airline_section_z = '%{strftime("%c")}'
" -----------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" <NERDTree插件配置 >
"------------------------------------------------------------------------------
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeWinPos='left'
let g:NERDTreeDirArrows = 0
let NERDTreeMinimalUI = 1
nmap <F10> :NERDTreeToggle<CR>
"------------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" < neocomplcache 插件配置 >
"------------------------------------------------------------------------------
" 关键字补全、文件路径补全、tag补全等等，各种，非常好用，速度超快。
let g:neocomplcache_enable_at_startup = 1  "vim 启动时启用插件
"let g:neocomplcache_disable_auto_complete = 1 "不自动弹出补全列表
" 在弹出补全列表后用 <c-p> 或 <c-n> 进行上下选择效果比较好
"------------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" < supertab 插件配置 >
"------------------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
" -----------------------------------------------------------------------------

"------------------------------------------------------------------------------
" < ctrlp 插件配置 >
"------------------------------------------------------------------------------
nmap <F6> <Esc>:CtrlP<CR>
let g:ctrlp_working_path_mode = 'cra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$|(node_modules|_prj|tmp)$',
            \ 'file': '\v\.(exe|so|dll)$|.prjide',
            \ 'link': 'some_bad_symbolic_links',
            \ }
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" < scrooloose/syntastic 插件配置 >
"------------------------------------------------------------------------------
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_go_checkers = ['go']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"------------------------------------------------------------------------------

" -----------------------------------------------------------------------------
" <go插件配置 >
"------------------------------------------------------------------------------
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
"------------------------------------------------------------------------------
"
"

" 定义快捷键<Leader>前缀
let mapleader=","

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 定义快捷键到行首和行尾
nmap <Leader>b 0
nmap <Leader>e $

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

"" 依次遍历子窗口
nnoremap <Leader>nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %
"
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" 配色方案
set background=dark
colorscheme solarized

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 禁止折行
"set nowrap
" 基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
" 启动 vim 时打开折叠代码
set foldenable

" 退格键删除
set backspace=indent,eol,start

" 插入模式下光标移动
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"强制保存快捷键<ctrl +s> 需要在.bashrc 中加入 stty-ixon，因为C-s和C-q是终端的保留按键，所以对没有作用
cnoremap w! %!sudo tee > /dev/null %

"切换粘贴模式
nmap <F3> :set invpaste paste?<CR>

nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set grepprg=ack
nmap <F5> :Ack <C-R>=expand("<cword>")<CR><CR>
nmap <F11> :TagbarToggle<CR>

"代替tab的功能,tab被supertab插件占用
nmap <c-i> a

