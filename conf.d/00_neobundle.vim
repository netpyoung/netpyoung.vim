if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim' "Vundle을 뛰어넘는 NeoBundle.

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ } "비동기 실행을 위한것.

NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'} " 컬러 Theme.
NeoBundle 'Shougo/neocomplcache' "자동완성.
NeoBundle 'Shougo/unite.vim'     "정보 탐색.


"NeoBundle 'scrooloose/nerdtree' "디렉토리 탐색.
NeoBundle 'Shougo/vimfiler.vim' "디렉토리 탐색.
NeoBundle 'tpope/vim-fugitive'  "Git 플러그인.

NeoBundle 'mhinz/vim-startify' "초기 화면 버퍼.

NeoBundle 'Shougo/vimshell.vim' "쉘 프로그램.

NeoBundle 'thinca/vim-quickrun' "간단한 명령을 쉽게 run.

NeoBundle 'rking/ag.vim' "grep확장판.


" [== GUI Only ==]
if has("gui_running")
    "NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
    NeoBundle 'Lokaltog/vim-powerline' "상태바를 예쁘게 꾸며줌.
endif


" [== Installation check. ==]
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  "echomsg 'Please execute ":NeoBundleInstall" command.'
  echomsg 'Install Plugins'
  NeoBundleInstall
endif
