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
Plugin 'bfredl/nvim-ipy'
Plugin 'tell-k/vim-autopep8'
call vundle#end()            " required
filetype plugin indent on    " required
map <C-n> :NERDTreeToggle<CR>
map <C-l> :TlistToggle<CR>
colorscheme elflord
set number
set hlsearch

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
map <F5> :.w !bash <CR>
let Tlist_WinWidth = 40
