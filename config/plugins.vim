"-------vim-plug------
if has('unix')
    let g:python_path='/usr/bin/python3'
elseif has('mac')
    let g:python_path='/usr/bin/python3'
endif

call plug#begin('~/vimplugged')

Plug 'python-mode/python-mode', { 'branch': 'develop' }
    let g:pymode_python = 'python3'

Plug 'tpope/vim-surround'

Plug 'Valloric/YouCompleteMe'
    "let g:ycm_server_python_interpreter = 'python3'
    let g:ycm_python_binary_path = g:python_path
    let g:ycm_semantic_triggers =  {
                \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
                \ 'cs,lua,javascript,vim': ['re!\w{2}'],
                \ }
    let g:ycm_filetype_whitelist = { 
                \ "c":1,
                \ "python":1, 
                \ "go":1,
                \ "sh":1,
                \ "zsh":1,
                \ }

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
    "let g:UltiSnipsUsePythonVersion = 3
    let g:UltiSnipsExpandTrigger=";"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<c-p>"

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
	map <C-n> :NERDTreeToggle<CR>

"Plug 'fatih/vim-go',{'do': ':GoUpdateBinaries'}

Plug 'mhinz/vim-startify'

call plug#end()
