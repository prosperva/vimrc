" *************************
" Mike's VIM settings 
" chagel@gmail.com
" *************************

set fileencodings=utf-8,gb2312,gbk,gb18030

" avoid compatible problems with VI
set nocompatible
set modifiable
set write
syntax enable
syntax on
"setlocal spell spelllang=en_us
"set spell
"set spelllang=en_us

colorscheme molokai
set guifont=YaHei_Consolas_Hybrid:h14 "Monaco:h13 "YaHei\ Consolas\ Hybrid\ 11\ TextMate:h12
set number
set numberwidth=5
set lines=45
set columns=100

" wm->slipt windows to display file explorer and taglist
let g:winManagerWindowLayout='FileExplorer|TagList'
let NERDTreeIgnore=['\.pyc$']

" taglist settings
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" tab width
set sw=4
set ts=4
set et

set autoindent
set smartindent

filetype on

" match pair of punc characters
set showmatch

" no toolbar
set guioptions-=T
set ruler

set backupdir=~/tmp

" language specific settings
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2 
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2 

" load projects' tags
"set tags=/home/mike/dev/workspace/tags
"set tags=/home/mike/dev/source/django-truck/django/tags

let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1



let g:user_zen_expandabbr_key = '<c-e>'
"let g:use_zen_complete_tag = 1


"snippets
:filetype plugin on

"set completeopt=longest,menu

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
set cursorline
"set cc=74
hi colorcolumn guibg=DarkCyan

"set ai
set si
"set ci

"mapping config
source ~/.vim/.vimrc_maps
source ~/.vim/profile/.vim_twit
source ~/.vim/.vim_blog

"bundles
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'git://github.com/vim-scripts/Headlights.git' 
Bundle 'git://github.com/vim-scripts/vst.git'
