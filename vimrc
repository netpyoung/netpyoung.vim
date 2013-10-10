set nocompatible "vi 이전 호환성 무시.(vim꼴린대로 하겠다는거임.)

" ==============================================================================
filetype on
filetype indent on
filetype plugin on
" ==============================================================================

source ~/.vim/init_loader.vim
call init_loader#init_path('conf.d')
