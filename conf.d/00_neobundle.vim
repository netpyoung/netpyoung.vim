if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))


NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc'

" [== themes ==]
NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}


" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  "echomsg 'Please execute ":NeoBundleInstall" command.'
  echomsg 'Install Plugins'
  NeoBundleInstall
endif