
set nocompatible


set laststatus=2
"vim -V启动，可以看vim加载了哪些文
"set list "显示不可见字符

set backspace=indent,eol,start  " more powerful backspacing


set helplang=cn 

command FN :set nu foldcolumn=3
command RE :set nonumber foldcolumn=0

FN

autocmd BufWritePre * mkview  "写文件时mkview,可以考虑改成BufLeave 
"autocmd BufUnload * mkview  "写文件时mkview,可以考虑改成BufLeave 
autocmd BufRead  * loadview   "读文件时loadview

let g:EasyMotion_leader_key = '<Leader>'

"colorscheme elflord

let &runtimepath=&runtimepath."~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/chn_doc,~/.vim/easyMotion,~/.vim/conque_2.2,~/.vim/Vim-Jinja2-Syntax"
"let g:syntastic_check_on_open=1
"let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"

let mapleader = "\\"
"map <leader><leader>f :FufFile<CR>
"map <leader><leader>t :FufTaggedFile<CR>
"map <leader><leader>g :FufTag<CR>
"map <leader><leader>b :FufBuffer<CR>

set mouse="" "不加上会有错误,诡异

"set autochdir  "这个版本vim不认

set bs=2                " allow backspacing over everything in insert mode  "/etc/vimrc里有 先备着

"set magic "跟正则表达式有关

"set foldenable
"set foldmethod=manual

"set cin    " 实现 C 程序的缩进  跟cindent一样
set noautoindent  "自动缩进，似乎默认就开了  保持跟上一行相同的空格
set cindent "c方式缩进 似乎默认就开了  "{"的下一行，自动加空格
set smartindent "试试

syntax on "默认就开了
"syntax enable "默认开了syntax on 不知道和这个比有什么区别:wq
"set filetype=c 识别出错时候可以自己选

set history=50 "保存50条命令似乎
set ruler "第多少行 %多少

"set cursorline
"hi cursorline guibg=#222222
"hi CursorColumn guibg=#333333

set nobackup "关掉各种swap 备份
set nowb
set noswapfile

set cmdheight=1 "冒号那个命令条的高度
"set laststatus=2 "开启后底下会多个白条
set hlsearch  "似乎是搜索时高亮，默认就开了
set incsearch "似乎是实时搜索，默认就开了

"set showmatch "括号即使匹配
"这个是指在insert模式下打出[xxxxxxx]时，光标会暂时跳到前面的括号，很恶心
set showcmd "显示正在敲的命令  比如10gg的10


set fileencoding=gb18030
set fileencodings=utf8,shift-jis,gb18030,big5
set termencoding=utf8
set encoding=utf-8

set wildmenu
set wildmode=longest,list
"set ic

"这几个插件没啥用，删了
"let Tlist_Ctags_Cmd="~/.wybin/ctags"
"let g:winManagerWindowLayout='FileExplorer|TagList' 
"nmap wm :WMToggle<cr>

nmap <C-]> :tj <C-R>=expand("<cword>") <cr><cr>
"nmap :tl :Tlist<CR>
command TL :Tlist

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif



nmap <C-j> :cs find g <C-R>=expand("<cword>") <cr><cr>
"不太好用，有时候ctags能跳到cscope跳不到

nmap <C-\> :cs find c <C-R>=expand("<cword>") <cr><cr>

set tags=./tags,../tags,../../tags,../../../tags,../../../../tags,../../../../../tags,../../../../../../tags,../../../../../../../tags



cs add ./cscope.out
cs add ../cscope.out
cs add ../../cscope.out
cs add ../../../cscope.out
cs add ../../../../cscope.out
cs add ../../../../../cscope.out
cs add ../../../../../../cscope.out
cs add ../../../../../../../cscope.out
cs add ../../../../../../../../cscope.out


"source ~/.vim/syntax/cpp.vim
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
"set list


"nmap <F9> 24gj
nmap <F10> 24gk
nmap <F11> gj
nmap <F12> gk
nmap <F7> :set nowrap<cr>
nmap <F8> :set wrap<cr>
"nmap <F5> :set nowrap<cr>
nmap <F6> :set wrap<cr>

nmap <F9> :.w !cat<cr>
nmap <F2> :set nowrap<cr>
nmap <F3> :set wrap<cr>
nmap <F4> :set wrap<cr>

set viminfo='20,<1000,s10,h  "这个1000设小了，跨文件复制会复制不全
