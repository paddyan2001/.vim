"-------vim-plug------
call plug#begin('~/.vim/plugged')

Plug 'python-mode/python-mode', { 'branch': 'develop' }
    let g:pymode_python = 'python3'

Plug 'tpope/vim-surround'

Plug 'Valloric/YouCompleteMe'
    "let g:ycm_server_python_interpreter = 'python3'
    let g:ycm_python_binary_path = 'python3'

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

call plug#end()
