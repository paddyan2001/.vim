
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

func! Compile()
    if &filetype=="c"
        exec "w"
        exec "!clang %"
    endif
endfunc

func! Run()
    if &filetype == "python"
        exec "w"
            exec 'below term python3 %'
            "exec '!python3 %'
    endif
    if &filetype=="sh"
        exec "w"
        exec "!./%"
    endif
    if &filetype=="c"
        exec "!./%<.out"
    endif
    if &filetype=="java"
        exec "below term java %<"
    endif
endfunc
