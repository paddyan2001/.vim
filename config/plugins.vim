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

call plug#begin('~/vimplugged')

Plug 'tpope/vim-surround'

Plug 'Valloric/YouCompleteMe'
    let g:ycm_server_python_interpreter = g:python_path
    let g:ycm_path_to_python_interpreter = g:python_path
    let g:ycm_python_binary_path = g:python_path
    let g:ycm_key_invoke_completion = '<c-h>'
    let g:ycm_filetype_whitelist = { "c":1, "python":1, "go":1, "sh":1, "zsh":1,"vim":1 }
    nmap <f7> :YcmCompleter GoToDefinitionElseDeclaration<CR>

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

Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
	"autocmd vimenter * NERDTree
	map <C-t> :NERDTreeToggle<CR>

"Plug 'fatih/vim-go',{'do': ':GoUpdateBinaries'}

Plug 'mhinz/vim-startify'

Plug 'easymotion/vim-easymotion'
    nmap \ <Plug>(easymotion-prefix)

call plug#end()
