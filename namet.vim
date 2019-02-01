" 关闭自动备份
set nobackup
set nowb
set noswapfile
" 关闭BELL提示音
set noeb
set vb t_vb=

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
au BufRead,BufNewFile *.vue set filetype=html
au FileType html,im,javascript,css,vue,js set shiftwidth=2
au FileType html,im,javascript,css,vue,js set tabstop=2
au FileType java,python,php set shiftwidth=4
au FileType java,python,php set tabstop=4
" 每行最大个数
set textwidth=120
" 载入文件类型插件 
filetype on
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
" language messages zh_CN.utf-8

"帮助菜单语言
set helplang=cn

" 设置超时时间 500ms
set timeoutlen=500

" 设置括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i

" ---------- vim-plug begin ----------------
call plug#begin('~/.vim/plugins')

noremap ( ()<ESC>i" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'StanAngeloff/php.vim'

" 目录插件NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" NERDTree的git插件
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Surround
Plug 'tpope/vim-surround'

" 长时间未使用弹出快捷键
Plug 'liuchengxu/vim-which-key'  
let g:mapleader = "\<Space>" 
let g:maplocalleader = ","
nnoremap <silent> <leader> :WhichKey '<Space>'<CR> 
nnoremap <silent> <localleader> :WhichKey ','<CR>

" 对齐的虚线
Plug 'Yggdroot/indentLine'

" 文件搜索
Plug 'kien/ctrlp.vim'

" HTML
Plug 'mattn/emmet-vim'

" GIT 管理
Plug 'airblade/vim-gitgutter'


call plug#end()

" 让配置变更立即生效
au BufWritePost $MYVIMRC source $MYVIMRC
" 自动进入工作目录
" au BufEnter * cd %:p:h

""""""""""""NERDTree""""""""""""""
" 进入自动打开NERDTree
au VimEnter * NERDTree
" 只有最后一个窗口退出时自动退出NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 修改默认箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 设置开关 NERDTree 快捷键
map <C-n> :NERDTreeToggle<CR>

"""""""""""NERDTree-Git"""""""""""""""
let g:NERDTreeShowIgnoredStatus = 1
