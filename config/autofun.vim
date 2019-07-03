
func! FormatCode()
    exec "w"
    if &filetype == "python"
        exec "!autopep8 --in-place --aggressive %"
    endif
endfunc

func! Sort()
    exec "w"
    if &filetype == "python"
        exec "!isort %"
    endif
endfunc

func! Run()
    if &filetype == "python"
        exec "w"
        if is_win
            exec "below term python3 %"
        else
            exec "!python3 %"
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
