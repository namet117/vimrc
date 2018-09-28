" 关闭自动备份
set nobackup
set nowb
set noswapfile

set nocompatible
set nu
syntax enable
syntax on
set hlsearch
set incsearch
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set autoindent
set ruler
set showmode
set bg=dark
set shiftwidth=4
set tabstop=4
set softtabstop=4
" 使用空格代替tab
set expandtab
set smarttab
set smartindent
au FileType html,im,javascript,css set shiftwidth=2
au FileType html,im,javascript,css set tabstop=2
au FileType java,python,php set shiftwidth=4
au FileType java,python,php set tabstop=4
" 每行最大个数
set textwidth=120
" 载入文件类型插件 
filetype off
filetype plugin on
filetype indent on

" 文件变更时自动载入
set autoread

" 保存全局变量 
set viminfo+=!

" 文件编码问题
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,default,latin1

"解决consle输出乱码
language messages zh_CN.utf-8

"帮助菜单语言
set helplang=cn


" ---------- vim-plug begin ----------------
call plug#begin('~/.vim/plugins')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'StanAngeloff/php.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
