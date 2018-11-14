"-------vim-plug------
call plug#begin('~/.vim/plugged')

Plug 'python-mode/python-mode'

Plug 'ervandew/supertab'
	let g:SuperTabDefaultCompletionType = "<c-n>"
	let g:SuperTabContextDefaultCompletionType = "<c-n>"

Plug 'tpope/vim-surround'

Plug 'Valloric/YouCompleteMe'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

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
