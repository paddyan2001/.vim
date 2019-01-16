call plug#begin('~/vimplugged')

if is_win
    Plug 'maralla/completor.vim'
        let g:completor_complete_options = 'menuone,noselect'
        let g:completor_python_binary = g:python3_host_prog
        inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
        inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
else
    Plug 'Valloric/YouCompleteMe',{'for':['python','html','vim','javascript','typescript']}
        let g:ycm_server_python_interpreter = g:python3_host_prog
        let g:ycm_path_to_python_interpreter = g:python3_host_prog
        let g:ycm_python_binary_path = g:python3_host_prog
        let g:ycm_key_invoke_completion = '<c-h>'
        let g:ycm_filetype_whitelist = {"html":1,"python":1,"vim":1,"javascript":1 ,"typescript":1}
        let g:ycm_filetype_blacklist = {'tagbar':1,'gitcommit':1}
        let g:ycm_seed_identifiers_with_syntax=1
        let g:ycm_complete_in_comments = 1
        let g:ycm_complete_in_strings = 1
        let g:ycm_key_list_stop_completion = ['<CR>']
        let g:ycm_max_diagnostics_to_display=16
        let g:ycm_max_num_candidates = 30
        let g:ycm_error_symbol = '❌'
        let g:ycm_warning_symbol = '！'
        nmap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
        imap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
        vmap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
        nmap \yy :YcmCompleter GoToDefinitionElseDeclaration<CR>
endif

Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
    let g:UltiSnipsUsePythonVersion = 3
    let g:UltiSnipsExpandTrigger="<c-l>"
    let g:UltiSnipsJumpForwardTrigger="<c-j>"
    let g:UltiSnipsJumpBackwardTrigger="<c-k>"
Plug 'Yggdroot/LeaderF'
	let g:Lf_ShortcutF = '<leader>f'
	let g:Lf_WildIgnore = {
		\ 'dir': ['.svn','.git','.hg','.*'],
		\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
		\}
Plug 'Yggdroot/indentLine'
    let g:indentLine_color_term = 239
    let g:indentLine_color_gui = '#A4E57E'
    let g:indentLine_char = '┆'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
	"autocmd vimenter * NERDTree
	map <C-t> :NERDTreeToggle<CR>
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
    nmap \ <Plug>(easymotion-prefix)

"------For ProgramLanguage------
"Plug 'fatih/vim-go',{'do': ':GoUpdateBinaries'}
Plug 'pangloss/vim-javascript',{'for':['html','javascript']}
Plug 'mattn/emmet-vim',{'for':'html'}
call plug#end()
