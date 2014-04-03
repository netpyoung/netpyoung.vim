if has('vim_starting')
  set runtimepath+=~/.vim/neobundle.vim/
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
"NeoBundle 'tpope/vim-fugitive'  "Git 플러그인.

NeoBundle 'mhinz/vim-startify' "초기 화면 버퍼.

"NeoBundle 'Shougo/vimshell.vim' "쉘 프로그램.

"NeoBundle 'thinca/vim-quickrun' "간단한 명령을 쉽게 run.

"NeoBundle 'terryma/vim-multiple-cursors' "multiple-cursors
NeoBundle 'rking/ag.vim' "grep확장판.

"NeoBundle 'jtratner/vim-flavored-markdown' "markdown-mode


" for Python
"NeoBundle 'scrooloose/syntastic' "syntax 체크.
"NeoBundle 'hynek/vim-python-pep8-indent' "pep8 indent
"NeoBundle 'xolox/vim-misc' "vim autoload
"NeoBundle 'xolox/vim-easytags' "vim tags
"NeoBundle 'tpope/vim-unimpaired' "vim key binding

" for Golang
"NeoBundle 'fsouza/go.vim'

" for Clojure
NeoBundle 'tpope/vim-fireplace' "nrepl
NeoBundle 'tpope/vim-classpath'
NeoBundle 'guns/vim-clojure-static'

" for VimL
NeoBundle 'tpope/timl'

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
