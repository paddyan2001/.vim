"-------autorun------
augroup makejava
    autocmd!
    autocmd FileType java set makeprg=javac\ %
augroup END

augroup makec
    autocmd!
    autocmd FileType c set makeprg=gcc\ %\ -o\ %<
augroup END

func! FormatCode()
    exec "w"
    if &filetype == "python"
        exec "!autopep8 --in-place --aggressive %"
    endif
endfunc
func! Run()
    if &filetype == "python"
        exec "w"
        if (g:iswindows)
            exec "below term python %"
        elseif(g:ismac)
            exec "below term python3 %"
        elseif(g:islinux)
            exec "!clear&&python3 %"
        endif
    endif
    if &filetype=="sh"
        exec "w"
        exec "!./%"
    endif
    if &filetype=="c"
        exec "!./%<"
    endif
    if &filetype=="java"
        exec "below term java %<"
    endif
endfunc
"-------autorun------

