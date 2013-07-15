" ==============================================================================
function IsWindows()
	if has("gui_running") && (has("gui_win32") || has("gui_win64"))
		return 1
	endif
	  
	return 0
endfunction

if IsWindows()
	set guifont=bitstream_vera_sans_mono:h15
else
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 15
endif

" ==============================================================================
colorscheme Tomorrow-Night-Bright "컬러 Theme

set laststatus=2  "상태바.(0 = never, 1 = (default) two+, 2 = always)
set showtabline=2 "탭바.
set tabpagemax=100 "

set guioptions-=m "메뉴바 제거.
set guioptions-=T "툴바 제거.
set shortmess+=I "환영 스크린 제거.

"set relativenumber "상대적으로 줄번호를 먹임.
set number     "라인 넘버
set cursorline "현재 라인 하이라이트.

syntax on "문법 강조

set splitbelow "화면 분할 순서 조정.
set splitright "화면 분할 순서 조정.

set wildmenu              " 명령어 힌트.
set wildmode=list,longest " 명령어 힌트. 목록으로.

set colorcolumn=80 "80라인 색상적용.


" [== ( something ) ==]
"imap [] [] <Left>
"imap () () <Left>
"imap "" ""<Left>
"imap '' '' <Left>
"imap <> <> <Left>


" [== TAB ==]
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4


" [== Search ==]
set incsearch " incremental search
set hlsearch " 검색 결과 강조
set ignorecase " 대소문자 무시 검색
set smartcase " 대문자가 검색 문자열에 있을때는 noignorecase


" ==============================================================================
" [== 키 설정 ==]
nnoremap <space> za "unfold(za)를 <space>로 맵핑.
set backspace=indent,eol,start " 백스페이스 설정.

nmap \g :nohlsearch<CR>

nmap \u :Unite file buffer<CR>
"nmap \t :NERDTreeToggle<CR>
nmap \t :VimFilerExplore<CR>

map <F7> :QuickRun<CR><C-W>w<C-W> "QuickRun설정.

" ==============================================================================
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


" ==============================================================================
" [== 번들 설정 ==]
let g:neocomplcache_enable_at_startup = 1 "자동완성 On.

"let g:Powerline_symbols = 'fancy'
let g:startify_bookmarks = [ '~/.vim/conf.d/01_init.vim' ] "북마크 설정.

let g:quickrun_config = { '*': { 'hook/time/enable': '1 '}}

let g:vimfiler_as_default_explorer = 1
