call plug#begin('~/vimplugged')
Plug 'tpope/vim-surround'
Plug 'Yggdroot/LeaderF'
    imap <leader>f <ESC><leader>f
    let g:Lf_ShortcutF = '<leader>f'
    let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git','.hg','.*'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
        \}
Plug 'scrooloose/nerdcommenter'
"Plug 'tpope/vim-fugitive'
"Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
    nmap \ <Plug>(easymotion-prefix)
call plug#end()
