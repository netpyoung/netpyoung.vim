ReadMe
=============

# ~/.vim
* http://www.vim.org/

## Windows environment variable
* VIM = d:\myHome\.vim
* VIMRUNTIME = c:\Program Files (x86)\Vim\vim73

## clone

```bash
git clone git@github.com:netpyoung/netpyoung.vim.git

or 

git clone https://github.com/netpyoung/netpyoung.vim.git
```

## init & update submodule

```
git submodule init && git submodule update
```

## update submodule all

```
git submodule foreach git pull
```

--------------------------------------------------------------------------------

## packages

### Conf
* tyru/init-loader (source installed https://github.com/tyru/init-loader.vim)

### PackageManager
* Shougo/neobundle.vim  (source installed https://github.com/Shougo/neobundle.vim)

### NeoBundle로 설치한 패키지 목록
[./conf.d/00_neobundle.vim](./conf.d/00_neobundle.vim)

### 설치는 안했지만 좋아보이는것.
*  메모관리
 - https://github.com/glidenote/memolist.vim
 - http://blog.glidenote.com/blog/2012/03/26/memolist.vim/

* 마크다운 컨텍스트에 따른 소스 문법강조
 - https://github.com/osyo-manga/vim-precious

* watch dog
 - http://d.hatena.ne.jp/osyo-manga/20120924
 - https://github.com/osyo-manga/vim-watchdogs
 - https://github.com/osyo-manga/shabadou.vim

* clojure
 - https://github.com/tpope/vim-fireplace

* YouCompleteMe
 - 자동완성. c, python기반.
 - http://valloric.github.io/YouCompleteMe/

* Tabular
 - 정렬
 - https://github.com/godlygeek/tabular

* 인덴트 가이드
  - https://github.com/nathanaelkane/vim-indent-guides

--------------------------------------------------------------------------------

# 참고자료
* vimpusher : http://www.vimpusher.com/
* writing a vim plugin : http://items.sjbach.com/97/writing-a-vim-plugin
* vimcast : http://vimcasts.org/
* learn vim script the hard way : http://learnvimscriptthehardway.stevelosh.com/
* book:practical-vim : http://pragprog.com/book/dnvim/practical-vim
* book:hacking-vim-7.2 : http://www.packtpub.com/hacking-vim-72/book
* jp:Vim Advent Calendar 2012 : http://atnd.org/events/33746
* jp:vim-jp : 일본 vim 사용자 모임.