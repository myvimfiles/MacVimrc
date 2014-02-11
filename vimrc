"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set nu
set guifont=Monaco:h18
set history=100000

"中文乱码解决
"set fileencodings=gb2312,gb18030,utf-8
"set termencoding=utf-8
"set encoding=prc 

"设置菜单语言  
set langmenu=zh_cn 
set showcmd  
set nocompatible               " be iMproved
filetype off                   " required!
syntax on
set hlsearch

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
 
Bundle 'https://github.com/Lokaltog/vim-powerline'
"vim-powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'unicode'
set encoding=utf8

Bundle 'molokai'
color molokai


Bundle 'https://github.com/godlygeek/tabular'
"   http://www.cnblogs.com/huanlei/archive/2012/04/13/2445550.html

"Bundle 'https://github.com/msanders/snipmate.vim'
Bundle 'git://github.com/selflearner/snipmate.vim.git'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
 
filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"




"Bundle 'Conque-Shell'    安装不成功，需手动安装conque_2.1.vba
"安装方法：直接用vi打开，输入:so % 
map <F10> :ConqueTermTab bash<CR>




"set encoding=UTF-8
"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set fileencoding=utf-8


"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"字体设置
"set guifont=Arial_monospaced_for_SAP:h16


"Bundle "VimIM"
":let g:vimim_map='c-bslash'	" Ctrl-\ 开关输入法
":let g:vimim_map='m-space'	" Alt-空格键 开关输入法

"自动切换输入法，插入模式自动转换为英文
"se imd 
"au InsertEnter * se noimd 
"au InsertLeave * se imd 
"au FocusGained * se imd 
