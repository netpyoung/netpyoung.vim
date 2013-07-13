set nocompatible "vi 이전 호환성 무시.(vim꼴린대로 하겠다는거임.)

filetype on "파일타입은 아직 뭐하는 건지 모르겠다.
filetype indent on
filetype plugin on

source $VIM/init_loader.vim
call init_loader#init_path('conf.d')
