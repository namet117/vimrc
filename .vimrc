set nocompatible
set nu
syntax enable
syntax on
set hlsearch
set backspace=2
set autoindent
set ruler
set showmode
set bg=dark
set shiftwidth=4
set tabstop=4 
set softtabstop=4
set expandtab
set smartindent

" 载入文件类型插件 
filetype plugin on

" 为特定文件类型载入相关缩进文件 
filetype indent on

" 保存全局变量 
set viminfo+=!

call plug#begin('~/.vim/plugins')

" Plug 'scrooloose/nerdtree'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

call plug#end()

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

