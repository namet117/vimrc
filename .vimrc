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


" ---------- vim-plug begin ----------------
call plug#begin('~/.vim/plugins')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'StanAngeloff/php.vim'

" 目录插件NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" NERDTree的git插件
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" 让配置变更立即生效
au BufWritePost $MYVIMRC source $MYVIMRC
" 自动进入工作目录
au BufEnter * cd %:p:h

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
" 根据文件类型设置文件颜色
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"""""""""""NERDTree-Git"""""""""""""""
" 设置自定义图标
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
