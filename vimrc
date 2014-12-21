"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"test 2014 12 20 23:29
"test git  2014 12 21
if has('unix')
    let $VIMFILES = $HOME.'/.vim'
else
    let $VIMFILES = $VIM.'/vimfiles'
endif



let mapleader = ","
set nu
if has("gui_running")
	set guifont=Monaco:h20
      "set guifont=Consolas:h9
endif
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

"对齐插件
Bundle 'https://github.com/godlygeek/tabular'
"   http://www.cnblogs.com/huanlei/archive/2012/04/13/2445550.html

"Bundle 'https://github.com/msanders/snipmate.vim'
Bundle 'git://github.com/myvimfiles/snipmate.vim.git'
"let g:SuperTabDefaultCompletionType = "context"
"let g:snips_trigger_key="<S-Tab>" 
"let g:snips_trigger_key='<F5>' 
"let SuperTabMappingForward="<Tab>" 
"let SuperTabMappingBackward="<S-Tab>"

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'https://github.com/vim-scripts/L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

Bundle 'https://github.com/vim-scripts/dbext.vim'
let g:dbext_default_display_cmd_line = 1
"let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=123456:dbname=xsphp'
let g:dbext_default_profile_mysql_local_DBI = 'type=DBI:user=root:passwd=123456:driver=mysql:conn_parms=database=xsphp;host=192.168.111.120'

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
"map <F10> :ConqueTermTab bash<CR>
map <F1> :e ~/.vim/vimrc<CR>




set encoding=UTF-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8


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
"
"
"
"
Bundle 'https://github.com/ervandew/supertab'
let g:SuperTabDefaultCompletionType="context"  
"
"快速注释
"Bundle 'https://github.com/scrooloose/nerdcommenter'
"
"
"
"树形工程浏览视图
"针对工程用nerdtree打开的问题，我有个小小的经验之谈。
"        (3.1).你可以使用vim +NERDTree就能快速以nerdtree打开当前目录
"        (3.2).使用别名，快速在任何地方打开某一工程，举例：在.bashrc中定义alias openpro='cd /workspace/project; vim +NERDTree'后，在任何目录执行openpro就能打开workspace目录下的project这个工程了。
"        (3.3).配置快捷键，比如F2等。
Bundle 'https://github.com/scrooloose/nerdtree'
"map <F6> :NERDTreeToggle<CR>
	

"Bundle 'https://github.com/WolfgangMehner/vim-plugins'
"let g:BASH_AuthorName = ‘coder’
"let g:BASH_Email = ‘birdcoder@icloud.com’
"let g:BASH_Company = ‘bird'

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
Bundle 'https://github.com/vim-scripts/taglist.vim'
" 不同时显示多个文件的 tag ，只显示当前文件的
let Tlist_Show_One_File=1
" 如果 taglist 窗口是最后一个窗口，则退出 vim
let Tlist_Exit_OnlyWindow=1
"让当前不被编辑的文件的方法列表自动折叠起来
let Tlist_File_Fold_Auto_Close=1
"把taglist窗口放在屏幕的右侧，缺省在左侧
let Tlist_Use_Right_Window=1
"显示taglist菜单
let Tlist_Show_Menu=1
"启动vim自动打开taglist
"let Tlist_Auto_Open=1

Bundle 'https://github.com/myvimfiles/winmanager'
Bundle 'https://github.com/vim-scripts/bufexplorer.zip'
Bundle 'https://github.com/fholgado/minibufexpl.vim'
" -- MiniBufferExplorer --
"let g:miniBufExplMapWindowNavVim = 1 " 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口  无效
"let g:miniBufExplMapWindowNavArrows = 1 " 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口  无效
"let g:miniBufExplMapCTabSwitchBufs = 1 " 启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持 无效
"let g:miniBufExplMapCTabSwitchWindows = 1 " 启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
"let g:miniBufExplModSelTarget = 1 " 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer
"常用命令
"<Tab>  移到上一个buffer
"<Shift-Tab> 移到下一个buffer
"<Enter>  打开光标所在的buffer
"d   删除光标所在的buffer


let g:NERDTree_title='NERDTree'  

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer'
"" 用 F6 打开
nmap <F6> :WMToggle<cr>:q<cr>
"" 用 ctrl + F6 关闭
nmap <C-F6> :WMToggle<cr>
" 这里为什么要用 F6 和 C-F6 而不是用一个 F6呢？
" 其实是因为当运行 WMToggle 时会新建一个空白窗口，所以要用后面的 :q 来关闭一个，但是如果再运行一次的时候，由于
"只剩下一个一个窗口了，而系统F6是关闭列表以及那个新建的空白窗口（即关闭两个窗口），所以就会将正文窗口自动关闭，所以这里用了一个 C-F4来关闭。这里是要注意的 


"let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>  


Bundle 'https://github.com/scrooloose/nerdcommenter'
" <leader>ca 在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
" <leader>cc 注释当前行
" <leader>cs 以”性感”的方式注释
" <leader>cA 在当前行尾添加注释符，并进入Insert模式
" <leader>cu 取消注释
" <leader>cm 添加块注释
" <leader>c<space>，切换注释/非注释状态
"Normal模式下，几乎所有命令前面都可以指定行数
"Visual模式下执行命令，会对选中的特定区块进行注释/反注释

Bundle 'https://github.com/vim-scripts/comments.vim'

" 浏览txt文件
Bundle 'https://github.com/vim-scripts/TxtBrowser'


"显示垂直对齐线http://www.douban.com/group/topic/29565874/
"Bundle 'https://github.com/nathanaelkane/vim-indent-guides'


Bundle 'https://github.com/vim-scripts/mru.vim'
let MRU_File = $VIMFILES.'/_vim_mru_files'
let MRU_Max_Entries = 1000
let MRU_Add_Menu = 0
nmap <leader>f :MRU<CR>
"1）let MRU_File='/tmp/mru_files' 设置默认保存最近打开文件列表的文件，默认$HOME/.vim_mru_files；
"2）let MRU_Max_Entries = 1000 设置默认记录的打开文件数量，默认100；
"3）let MRU_Exclude_Files = '^/tmp/.*|^/var/tmp/.*' 设置默认不包含哪些文件，默认空；
"4）let MRU_Include_Files = '.c$|.h$' 设置默认只包含哪些文件，默认空；
"5）let MRU_Window_Height = 15 设置MRU窗口的高度，默认8；
"6）let MRU_Use_Current_Window = 1 设置默认在本窗口打开最近文件列表，而不是新的窗口；
"7）let MRU_Auto_Close = 0 设置默认不关闭MRU窗口，默认关闭；
"8）let MRU_Max_Menu_Entries = 20 设置MRU窗口默认显示多少条记录，默认10；
"9）let MRU_Max_Submenu_Entries = 15 设置MRU窗口默认子菜单显示多少条记录，默认10。如果有太多的记录显示在MRU窗口时，记录会被分割成子菜单，该配置设置子菜单里显示多少条记录；


Bundle 'https://github.com/dterei/VimBookmarking'
"* <F3> / :ToggleBookmark - Set a bookmark at the current location.
"* <F4> / :PreviousBookmark - Jump to the closest bookmark earlier that the current location in the file.
"* <F5> / :NextBookmark - Jump to the closest bookmark later than the current location in the file.

Bundle 'https://github.com/vim-scripts/matchit.zip'
" % 正向匹配      g% 反向匹配
" [% 定位块首     ]% 定位块尾

"Vim C/C++ omni-completion with ctags database
Bundle 'https://github.com/FromtonRouge/OmniCppComplete'
set nocp  
filetype plugin on  

"与现有winmanager共用，会造成界面混乱
"Bundle 'https://github.com/spolu/dwm.vim'
"C-N Creates a new window and place it in the master pane [M] & stacks all previous windows in the stacked pane [S]
"C-C Close the current window if no unsaved changes
"C-J Jumps to next window (clockwise)
"C-K Jumps to previous window (anti-clockwise)
"C-Space Focus the current window, that is, place it in the master pane [M] & stacks all other windows in the stacked pane [S]

Bundle 'https://github.com/DataWraith/auto_mkdir'

Bundle 'https://github.com/selflearner/bash-support.vim'
"TODO
"bash-support
"
"

Bundle 'https://github.com/vim-scripts/FuzzyFinder'




"cd /Users/baby/vmware_centos
"cd /Users/baby/Share/xsphp
cd /Volumes/www/xsphp


"SQLUtilities.vim插件
"这个插件主要是用来格式化sql语句，输入帮助 : help sqlutil

nmap <C-h> <C-w><C-h>
nmap <C-l> <C-w><C-l>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>

"括号匹配
set showmatch




map <silent> <C-i> :call ToggleMaxWin()<cr> 
"http://my.oschina.net/u/157777/blog/64416
" save current window layout
" can restore layout when press some key
" author:alex8224@gmail.com
" 2012-04-27
"

if exists("g:vimlayoutloaded")
    finish
else
    let g:vimlayoutloaded=1
endif

function! HeightToSize(height)
	let currwinno=winnr()
	if winheight(currwinno)>a:height
		while winheight(currwinno)>a:height
			execute "normal \<c-w>-"
		endwhile
	elseif winheight(currwinno)<a:height
		while winheight(currwinno)<a:height
			execute "normal \<c-w>+"
		endwhile
	endif
endfunction

function! WidthToSize(width)
	let currwinno=winnr()
	if winwidth(currwinno)>a:width
		while winwidth(currwinno)>a:width
			execute "normal \<c-w><"
		endwhile

	elseif winwidth(currwinno)<a:width
		while winwidth(currwinno)<a:width
			execute "normal \<c-w>>"
		endwhile
	endif
endfunction


function! TweakWinSize(orgisize)
	call HeightToSize(a:orgisize[0])
	call WidthToSize(a:orgisize[1])
endfunction

function! RestoreWinLayout()
	if exists("g:layout")
		let winno=1
		let orgiwinno=winnr()
		for win in g:layout
			execute "normal \<c-w>w"
			let currwinno=winnr()
			if currwinno!=1 && currwinno!=orgiwinno
				call TweakWinSize(g:layout[currwinno-1])
			endif
		endfor
		unlet g:layout
	endif
endfunction

function! SaveWinLayout()
	let wnumber=winnr("$")
	let winlist=range(wnumber)
	let winno=0
	let layout=[]
	for index in winlist
		let winno+=1
		let wininfo=[winheight(winno),winwidth(winno)]
		call add(layout,wininfo)
	endfor
	let g:layout=layout
endfunction

function! ToggleMaxWin()
	if exists("g:layout")
        if winnr("$")==len(g:layout)
            call RestoreWinLayout()
        else
            call SaveWinLayout()
            execute "normal 200\<c-w>>"
            execute "normal \<c-w>_"
            call RestoreWinLayout()
        endif
	else
		call SaveWinLayout()
		execute "normal 200\<c-w>>"
		execute "normal \<c-w>_"
	endif
endfunction
