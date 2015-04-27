"          .oooooo.   oooooooooo.  oooooo     oooo ooooo ooo        ooooo 
"         d8P'  `Y8b  `888'   `Y8b  `888.     .8'  `888' `88.       .888' 
"        888           888     888   `888.   .8'    888   888b     d'888  
"        888           888oooo888'    `888. .8'     888   8 Y88. .P  888  
"        888           888    `88b     `888.8'      888   8  `888'   888  
"        `88b    ooo   888    .88P      `888'       888   8    Y     888  
"         `Y8bood8P'  o888bood8P'        `8'       o888o o8o        o888o 
"
" Author: Chen Bin <chenbin060708@gmail.com>


" Disable vi-compatibility
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"if has("win32")
   "let $VIMFILES = $VIM/vimfiles
"else
   "let $VIMFILES = $HOME/.vim
"endif

filetype plugin indent on
filetype plugin on
"===============================================================================
"general configuration
"===============================================================================
let mapleader = ','

set ff=unix
syntax on
"set spell
set nospell 
set nobackup 
set autoindent 
set bs=2 
set showmatch 
set laststatus=2 
set autochdir 

set expandtab
set shiftwidth=3
set tabstop=3

set smarttab
set softtabstop=3
set shiftwidth=3

set number 
set autoread 
set ignorecase 
set nowrapscan 
set fileencodings=utf-8,gbk 
set hls 
set helplang=cn 
"set foldmethod=syntax 
set numberwidth=5 
set textwidth=180 
set lines=26 
set columns=100 

set guioptions-=T 
set guioptions-=L
set guioptions-=r
set guioptions-=b

set showtabline=1 

colorscheme wombat
"set guifont=Microsoft_YaHei_Mono:h12
"set guifont=Consolas:h12
"set guifont=Consolas\ for\ Powerline\ FixedD

set cursorline
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorLine cterm=NONE ctermbg=darkred guibg=darkred 
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"}}

let g:NERDTree_title='NERD Tree'
let g:winManagerWindowLayout='NERDTree'
let g:winManagerWidth=35
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction


"auto complete bracket
"inoremap ( ()<ESC>i  
"inoremap [ []<ESC>i  
"inoremap { {}<ESC>i  
"inoremap < <><ESC>i
"inoremap " ""<left> 
"inoremap ' ''<left> 

"===============================================================================
"custom shortcut key configuration
"===============================================================================
nnoremap <Leader><C-h> <C-w>h
nnoremap <Leader><C-j> <C-w>j
nnoremap <Leader><C-k> <C-w>k
nnoremap <Leader><C-l> <C-w>l
nnoremap <F11> <C-w><C-w>

map <Leader><C-m> <C-W>_
map <Leader><C-q> :q<CR>

map <Leader>tn :tabnext<CR> 
map <Leader>tw :tabnew<CR> 
map <Leader>tc :tabclose<CR> 

nmap <Leader>wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR> 

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

nmap <Leader>ack :Ack<Space>
nmap <Leader>qf :copen<CR>
"let g:ackprg="ack// -H// --nocolor// --nogroup"

"function! Ack(args)
    "let grepprg_bak=&grepprg
    "exec "set grepprg=" . g:ackprg
    "execute "silent! grep " . a:args
    "botright copen
    "let &grepprg=grepprg_bak
    "exec "redraw!"
"endfunction

"command! -nargs=* -complete=file Ack call Ack(<q-args>)

nmap <F10> :tabnew<CR>:e C:\Program Files\Vim\_vimrc<CR>

nmap <C-p> :CtrlPMixed<CR>

"for mediaservice coding
nmap <F5> :e D:\P4\Media_Service\mediaservice_mme\trunk\src-ref\server\

"for foldmethod
nmap <F6> :set foldmethod=syntax<CR>

let g:ycm_global_ycm_extra_conf = 'C:/Program Files/Vim/.ycm_extra_conf.py'
let g:syntastic_always_populate_loc_list = 1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_autoclose_preview_window_after_insertion=1


"for taglist refreshment
autocmd CursorMovedI * silent! TlistHighlightTag

nmap <Leader>tb :TagbarToggle<CR>
nmap <Leader>w :w!<CR>
nmap <Leader>q :q!<CR>

"set guifont=Consolas\ for\ Powerline\ FixedD:h10
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
"===============================================================================
"vundle configuration
"===============================================================================
"filetype off "required by vundle

"set rtp+=$VIM\vimfiles\bundle\vundle\
"call vundle#rc()

"let vundle manage vundle 
"required!
"Bundle 'gmarik/vundle'


"the configuration of nerdtree
"Bundle 'The-NERD_tree'

"the configuration of FuzzyFinder
"Bundle 'FuzzyFinder'

"the configuration of winmanager
"Bundle 'winmanager'

"the configuration of easymotion
"Bundle 'Lokaltog/vim-easymotion'

"the configuration of powerline
"Bundle 'Lokaltog/powerline'

"the configuration of youcompleteme
"Bundle 'Valloric/YouCompleteMe'

"the configuration of syntastic
"Bundle 'scrooloose/syntastic'

"the configuration of visualmark
"Bundle 'visualmark'

"the configuration of zencoding
"Bundle 'zencoding.vim'

"the configuration of python_fold
"Bundle 'python_fold'

"the configuration of vim-fugitive
"Bundle 'tpope/vim-fugitive'

"the configuration of tagbar
"Bundle 'majutsushi/tagbar'

"the configuration of ctrlp
"Bundle 'kien/ctrlp.vim'

"the configuration of VimCalc
"Bundle 'gregsexton/VimCalc'

"=============================================================================
"the configuration of airline
"Bundle 'bling/vim-airline'

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode', ' ', ''])
   let g:airline_section_b = airline#section#create_left(['ffenc','file'])
endfunction

"autocmd VimEnter * call AirlineInit()
  
set fileencodings=utf-8
"set fileencodings=utf-8,gbk 
set guifont=Consolas:h12
"let g:Powerline_symbols = 'fancy'
"let g:airline_powerline_fonts=1
"let g:airline_theme="wombat"

"the configuration of ack
"Bundle 'mileszs/ack.vim'
"let g:path_to_search_app = "C:/ack" 

"the configuration of nerdtree-ack
"Bundle 'nerdtree-ack'

"the configuration of calendar
"Bundle 'itchyny/calendar.vim'

"the configuration of nerdcommenter
"Bundle 'scrooloose/nerdcommenter'

"the configuration of VimCalc
"Bundle 'VimCalc'

"the configuration of vimwiki
"Bundle 'vimwiki'
"===============================================================================
"viki configuration
"===============================================================================
let g:vikiNameSuffix=".viki"
augr viki
au!
autocmd! BufRead,BufNewFile *.viki set filetype=viki
augr END

"the configuration of surround
"Bundle 'tpope/vim-surround'

"the configuration of nerdcommenter
"Bundle 'scrooloose/nerdcommenter'
