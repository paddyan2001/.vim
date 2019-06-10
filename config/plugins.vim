call plug#begin('~/vimplugged')
"------For completion------
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
    let g:UltiSnipsExpandTrigger="<c-l>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
    let g:UltiSnipsEditSplit="vertical"

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
"Plug 'tpope/vim-fugitive'
"Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
    nmap \ <Plug>(easymotion-prefix)

"------For searching------
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
"------For ProgramLanguage------
"Plug 'fatih/vim-go',{'do': ':GoUpdateBinaries'}
Plug 'pangloss/vim-javascript',{'for':['html','javascript']}
"Plug 'mattn/emmet-vim',{'for':'html'}
call plug#end()
