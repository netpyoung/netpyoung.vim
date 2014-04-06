if exists("g:loaded_xxx") || v:version < 700 || &cp
    finish
endif

let g:loaded_xxx = 1

command! -bang -complete=file -nargs=* Ls call xxx#core#ls(<f-args>)
