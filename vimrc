syntax enable
set number
set background=light
colorscheme macvim
map <C-n> :NERDTreeToggle<CR>

set nocompatible              " be iMproved, required
filetype off                  " required

set nocompatible
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
" Plugin 'git://git.wincent.com/command-t.git'
Plugin 'wincent/command-t'
" Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'groenewege/vim-markdown-preview'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line

Bundle 'vim-ruby/vim-ruby'
