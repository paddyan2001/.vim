"-------vim-plug------
call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'
	let g:SuperTabDefaultCompletionType = "<c-n>"
	let g:SuperTabContextDefaultCompletionType = "<c-n>"
Plug 'tpope/vim-surround'

Plug 'maralla/completor.vim'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'tomtom/tlib_vim'

Plug 'garbas/vim-snipmate'

Plug 'honza/vim-snippets'

Plug 'Yggdroot/LeaderF'
	let g:Lf_ShortcutF = '<leader>\'
	let g:Lf_WildIgnore = {
		\ 'dir': ['.svn','.git','.hg','.*'],
		\ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
		\}

Plug 'nathanaelkane/vim-indent-guides'

Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
	"autocmd vimenter * NERDTree
	map <C-n> :NERDTreeToggle<CR>
Plug 'w0rp/ale'
	let g:ale_linters = {'c': ['gcc'],'python': ['pylint'],'java':['javac'],'bash': ['shell']}
	let g:ale_linters_explicit = 1
	let g:ale_echo_delay = 200
	let g:ale_lint_delay = 500
	let g:ale_lint_on_text_changed = 'normal'
	let g:ale_lint_on_insert_leave = 1

"Plug 'fatih/vim-go',{'do': ':GoUpdateBinaries'}

call plug#end()
