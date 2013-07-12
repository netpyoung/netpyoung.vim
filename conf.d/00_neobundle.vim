if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))


NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc'

" [== themes ==]
NeoBundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}