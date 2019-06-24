call plug#begin('~/vimplugged')
Plug 'Valloric/YouCompleteMe',{'for':['python','html','vim','javascript','typescript']}
    let g:ycm_server_python_interpreter = python3_host_prog
    let g:ycm_path_to_python_interpreter = python3_host_prog
    let g:ycm_python_binary_path = python3_host_prog
    let g:ycm_key_invoke_completion = '<c-h>'
    let g:ycm_filetype_whitelist = {"html":1,"python":1,"vim":1,"javascript":1 ,"typescript":1}
    let g:ycm_filetype_blacklist = {'tagbar':1,'gitcommit':1}
    let g:ycm_seed_identifiers_with_syntax=1
    let g:ycm_complete_in_comments = 1
    let g:ycm_complete_in_strings = 1
    let g:ycm_min_num_of_chars_for_completion =2
    let g:ycm_use_ultisnips_completer = 1
    let g:ycm_cache_omnifunc = 1
    let g:ycm_max_diagnostics_to_display=30
    let g:ycm_disable_for_files_larger_than_kb = 50000
    let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<s-tab>', '<Up>']
    let g:ycm_max_diagnostics_to_display=20
    let g:ycm_max_num_candidates = 30
    let g:ycm_error_symbol = '❌'
    let g:ycm_warning_symbol = '！'
    nmap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
    imap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
    vmap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
    nmap \yy :YcmCompleter GoToDefinitionElseDeclaration<CR>
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
    let g:UltiSnipsUsePythonVersion = 3
    let g:UltiSnipsExpandTrigger="<c-l>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plug 'tpope/vim-surround'
"Plug 'Yggdroot/LeaderF'
	"let g:Lf_ShortcutF = '<leader>f'
	"let g:Lf_WildIgnore = {
		"\ 'dir': ['.svn','.git','.hg','.*'],
		"\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
		"\}
Plug 'scrooloose/nerdcommenter'
"Plug 'tpope/vim-fugitive'
"Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'
    nmap \ <Plug>(easymotion-prefix)

"------For searching------
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
    nmap <leader>f :FZF<cr>
    imap <leader>f <ESC>:FZF<cr>
Plug 'rking/ag.vim'
    nmap <leader>a :Ag<space>
    imap <leader>a <ESC>:Ag<space>

"------For ProgramLanguage------
"Plug 'fatih/vim-go',{'do': ':GoUpdateBinaries'}
Plug 'pangloss/vim-javascript',{'for':['html','javascript']}
"Plug 'mattn/emmet-vim',{'for':'html'}

call plug#end()
