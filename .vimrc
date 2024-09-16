let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://fastly.jsdelivr.net/gh/junegunn/vim-plug@0.14.0/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

    " List your plugins here
    Plug 'tpope/vim-sensible'
    " file tree "
    Plug 'scrooloose/nerdtree'
    " theme "
    Plug 'nanotech/jellybeans.vim'
    " status line "
    Plug 'vim-airline/vim-airline'

call plug#end()


let mapleader = " "

" set theme "
colorscheme jellybeans

" ######set for NERDTree############
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" 是否显示行号
let g:NERDTreeShowLineNumbers=1
" 普通模式下的映射
nnoremap <Leader>1 :NERDTreeToggle<CR>
noremap <F2> :NERDTreeFind<CR>

"使用空格来替换Tab"
set expandtab

"设置所有的Tab和缩进为4个空格"
set tabstop=4

"设定<<和>>命令移动时的宽度为4"
set shiftwidth=4

"使得按退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

"缩进，自动缩进（继承前一行的缩进）"
"set autoindent 命令打开自动缩进，是下面配置的缩写
"可使用autoindent命令的简写，即“:set ai”和“:set noai”
"还可以使用“:set ai sw=4”在一个命令中打开缩进并设置缩进级别
set ai
set cindent

"智能缩进"
set si

"自动换行”
set wrap

"设置软宽度"
set sw=4

"行内替换"
set gdefault
"显示标尺"
set ruler

"设置命令行的高度"
set cmdheight=1

"显示行数"
set relativenumber
set nu

"不要图形按钮"
" set go=

"设置魔术"
set magic

"关闭遇到错误时的声音提示"
"关闭错误信息响铃"
set noerrorbells

"关闭使用可视响铃代替呼叫"
set novisualbell

"高亮显示匹配的括号([{和}])"
set showmatch

"匹配括号高亮的时间（单位是十分之一秒）"
set mat=2

"搜索逐字符高亮"
set hlsearch
set incsearch

"搜索时不区分大小写"
"还可以使用简写（“:set ic”和“:set noic”）"
set ignorecase

"用浅色高亮显示当前行"
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

"输入的命令显示出来，看的清楚"
set showcmd
