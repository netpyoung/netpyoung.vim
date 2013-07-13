set guioptions-=T "툴바 제거.
set shortmess+=I "환영 스크린 제거

set number "라인 넘버
syntax on  "문법 강조

colorscheme tomorrow-night "컬러 Theme



let g:neocomplcache_enable_at_startup = 1

"let g:Powerline_symbols = 'fancy'
set laststatus=2 "(0 = never, 1 = (default) two more windows, 2 = always)

let g:startify_bookmarks = [ '~/.vim/conf.d/01_init.vim' ]

" [== 인코딩 설정 ==]
" ref: http://blog.kaisyu.com/2011/01/emacs-encoding-unicad.html
" 멀티 바이트를 지원하면
if has("multi_byte")
  " Vim 편집 시 내부 인코딩
  set encoding=utf-8
  " 터미널 인코딩
  set termencoding=utf-8
  " 새로 작성하는 파일 기본 인코딩
  setglobal fileencoding=utf-8
  " 읽어 오는 파일의 인코딩을 판별하는 순서
  set fileencodings=ucs-bom,utf-8,cp949,latin1
endif