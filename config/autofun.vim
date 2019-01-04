if exists("g:autofun_vim")
    finish
endif
let g:autofun_vim = 1

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
        if has('mac')
            exec "!python3 %"
        elseif has('unix')
            exec "!clear&&python3 %"
        elseif has('win64')||has('win32')
            exec "below term python %"
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
