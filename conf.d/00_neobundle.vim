if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'

" [== Look n Feel ==]
NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

NeoBundle 'taichouchou2/alpaca_powertabline'
"NeoBundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
NeoBundle 'Lokaltog/vim-powerline'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'mhinz/vim-startify'

" [== Installation check. ==]
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  "echomsg 'Please execute ":NeoBundleInstall" command.'
  echomsg 'Install Plugins'
  NeoBundleInstall
endif