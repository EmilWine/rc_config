set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/Conque-GDB'
Plugin 'taglist.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'morhetz/gruvbox'
call vundle#end()            " required
filetype plugin indent on    " required

"Power line stuff
set rtp+=~/.local/lib/python3.6/site-packages/powerline_status-2.7.dev9999_git.b_5d82d544f3366a214732aeb8f781d50ced38ceef_-py3.6.egg/powerline/bindings/vim/
set laststatus=2
set t_Co=256

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_termcolors=16
colorscheme gruvbox


map <C-n> :NERDTreeToggle<CR>
map <C-l> :TlistToggle<CR>
set number
set hlsearch

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
map <F5> :.w !bash <CR>
let Tlist_WinWidth = 30
