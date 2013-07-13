set nocompatible

filetype on
filetype indent on
filetype plugin on

source $VIM/init_loader.vim
call init_loader#init_path('conf.d')
