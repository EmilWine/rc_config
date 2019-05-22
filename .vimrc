set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'taglist.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'morhetz/gruvbox'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'chrisbra/csv.vim'
Plugin 'othree/xml.vim'
Plugin 'gtags.vim'
call vundle#end()            " required
filetype plugin indent on    " required
"
"Generic stuff"
set number
set hlsearch
set showmatch

"Power line stuff
set rtp+=~/.local/lib/python3.6/site-packages/powerline_status-2.7.dev9999_git.b_5d82d544f3366a214732aeb8f781d50ced38ceef_-py3.6.egg/powerline/bindings/vim/
set laststatus=2
set t_Co=256

"Gruv
let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_termcolors=256
set background=dark
colorscheme gruvbox

"XML
let g:xml_syntax_folding=1 
au FileType xml setlocal foldmethod=syntax

"YCM stuff
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_autoclose_preview_window_after_insertion = 1

map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize = 30

map <C-l> :TlistToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **/*.cpp **/*.cc **/*.h **/*.py **/*.cs **/*.c" <Bar> cw<CR>
map <F5> :.w !bash <CR>
let Tlist_WinWidth = 50


"gtags
map <C-\> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
if filereadable("GTAGS")
	set cscopetag
	set csprg=gtags-cscope                                             
	cs add GTAGS
endif

