set nocompatible 
filetype off     
" 将Vundle加入运行时路径中(Runtime path)
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

let BUNDLES_SRC = '~/.vim/.vimrc.bundles'
let BASE_VIMRC = '~/.vim/.vimrc.base'

if filereadable(expand(BUNDLES_SRC))
    exec 'source '.BUNDLES_SRC
endif

if filereadable(expand(BASE_VIMRC))
    exec 'source '.BASE_VIMRC
endif
