if exists("g:plugins_vim")
    finish
endif
let g:plugins_vim = 1
if has('python3')
    silent! python3 1
endif
"-------vim-plug------
if has('unix')
    let g:python_path='/usr/bin/python3'
endif
if has('mac')
    let g:python_path='/usr/local/bin/python3'
endif
if has('win64')||has('win32')
    let g:python_path='C:\\Users\\yanying\\AppData\\Local\\Programs\\Python\\Python37\\python'
endif

call plug#begin('~/vimplugged')

Plug 'tpope/vim-surround'

"Plug 'Valloric/YouCompleteMe',{'for':['python','html','vim','javascript','typescript']}
"    let g:ycm_server_python_interpreter = g:python_path
"    let g:ycm_path_to_python_interpreter = g:python_path
"    let g:ycm_python_binary_path = g:python_path
"    let g:ycm_key_invoke_completion = '<c-h>'
"    let g:ycm_filetype_whitelist = {"html":1,"python":1,"vim":1,"javascript":1 ,"typescript":1}
"    let g:ycm_filetype_blacklist = {'tagbar':1,'gitcommit':1}
"    let g:ycm_seed_identifiers_with_syntax=1
"    let g:ycm_complete_in_comments = 1
"    let g:ycm_complete_in_strings = 1
"    let g:ycm_key_list_stop_completion = ['<CR>']
"    let g:ycm_max_diagnostics_to_display=16
"    let g:ycm_max_num_candidates = 30
"    let g:ycm_error_symbol = '❌'
"    let g:ycm_warning_symbol = '！'
"    nmap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"    imap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"    vmap <f12> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"    nmap \yy :YcmCompleter GoToDefinitionElseDeclaration<CR>

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
    let g:UltiSnipsUsePythonVersion = 3
    let g:UltiSnipsExpandTrigger="<c-l>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<c-k>"

Plug 'Yggdroot/LeaderF'
	let g:Lf_ShortcutF = '<leader>f'
	let g:Lf_WildIgnore = {
		\ 'dir': ['.svn','.git','.hg','.*'],
		\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
		\}

Plug 'Yggdroot/indentLine'
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

Plug 'davidhalter/jedi-vim',{'for':'python'}

call plug#end()
