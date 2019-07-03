" Key-mappings
"---------------------------------------------------------
let mapleader=","
nmap ; :
nmap <space>[ O<esc>j
nmap <space>] o<esc>k

nmap \c :pclose<CR>:cclose<CR>
nmap \F :call FormatCode()<CR>
nmap \r :call Run()<CR>
nmap \S :call Sort()<CR>

" Non-standard {{{

vmap <Leader><Leader> <Esc>
imap <Leader><Leader> <Esc>

nnoremap cp yap<S-}>p

" Toggle fold
nnoremap <CR> za

" Focus the current fold by closing all others
nnoremap <S-Return> zMza

" Use backspace key for matchit.vim
nmap <BS> %
xmap <BS> %

"}}} Global niceties {{{
" Start an external command with a single bang
nnoremap ! :!

" Allow misspellings
cnoreabbrev qw wq
cnoreabbrev db bd

" Start new line from any cursor position
inoremap <C-Return> <esc>o

" Quick substitute within selected area
xnoremap s :s//g<Left><Left>

" Navigation in command line
cnoremap <C-l> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-d> <C-w>

" Switch history search pairs, matching my bash shell
cnoremap <C-p>  <Up>
cnoremap <C-n>  <Down>
cnoremap <Up>   <C-p>
cnoremap <Down> <C-n>

" }}}
" File operations {{{
" ---------------

" When pressing <leader>cd switch to the directory of the open buffer
map <Leader>cd :lcd %:p:h<CR>:pwd<CR>

" Fast saving
nnoremap <silent><Leader>w :write<CR>
imap <silent><Leader>w <esc>:write<CR>
vnoremap <silent><Leader>w <Esc>:write<CR>
nnoremap <silent><Leader>W :wa<CR>
imap <silent><Leader>W <esc>:wa<CR>
vnoremap <silent><Leader>W <Esc>:wa<CR>

nnoremap gq q
nnoremap <silent> q :<C-u>:close<CR>
nnoremap <silent> Q :<C-u>:only<CR>
nnoremap <silent> \b :<C-u>:bd<CR>
nnoremap <silent> \B :<C-u>:bd!<CR>

" Toggle editor visuals
nmap <silent> <Leader>ts :setlocal spell!<cr>
nmap <silent> <Leader>nn :setlocal nonumber!<CR>
nmap <silent> <Leader>nl :setlocal nolist!<CR>
nmap <silent> <Leader>nh :nohlsearch<CR>
nmap <silent> <Leader>nw :nowrap<CR>
nmap <silent> <Leader>tw :setlocal wrap! breakindent!<CR>

" }}} Totally Custom {{{

" Remove spaces at the end of lines
nnoremap <silent> ,<Space> :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

" Location list movement
nmap <Leader>j :lnext<CR>
nmap <Leader>k :lprev<CR>

" Duplicate lines
nnoremap <Leader>d m`YP``
vnoremap <Leader>d YPgv

" Drag current line/s vertically and auto-indent
vnoremap mk :m-2<CR>gv=gv
vnoremap mj :m'>+<CR>gv=gv
noremap  mk :m-2<CR>
noremap  mj :m+<CR>

" s: Windows and buffers {{{

nnoremap <silent> \g  :<C-u>split<CR>
nnoremap <silent> \v  :<C-u>vsplit<CR>
nnoremap <silent> \t  :tabnew<CR>
nnoremap <silent> \o  :<C-u>only<CR>
nnoremap <silent> \x  :<C-u>call <SID>BufferEmpty()<CR>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

"tabs control
noremap \1 :tabn 1<cr>
noremap \2 :tabn 2<cr>
noremap \3 :tabn 3<cr>
noremap \4 :tabn 4<cr>
noremap \5 :tabn 5<cr>
noremap \6 :tabn 6<cr>
noremap \7 :tabn 7<cr>
noremap \8 :tabn 8<cr>
noremap \9 :tabn 9<cr>
noremap \0 :tabn 10<cr>

" use left right arrow movement, resize splits instead.
nnoremap <C-Left>  :vertical resize -3<CR>
nnoremap <C-Right> :vertical resize +3<CR>

if is_mac
	" Open the macOS dictionary on current word
	nmap <Leader>? :!open dict://<cword><CR><CR>

	" Use Marked for real-time Markdown preview
	if executable('/Applications/Marked 2.app/Contents/MacOS/Marked 2')
		autocmd MyAutoCmd FileType markdown
			\ nmap <buffer><Leader>P :silent !open -a Marked\ 2.app '%:p'<CR>
	endif

	" Use Dash on Mac, for context help
	if executable('/Applications/Dash.app/Contents/MacOS/Dash')
		autocmd FileType yaml.ansible,php,css,less,html,markdown
			\ nmap <silent><buffer> K :!open -g dash://"<C-R>=split(&ft, '\.')[0]<CR>:<cword>"&<CR><CR>
		autocmd FileType javascript,javascript.jsx,sql,ruby,conf,sh
			\ nmap <silent><buffer> K :!open -g dash://"<cword>"&<CR><CR>
	endif

" Use Zeal on Linux for context help
elseif executable('zeal')
	autocmd FileType yaml.ansible,php,css,less,html,markdown
		\ nmap <silent><buffer> K :!zeal --query "<C-R>=split(&ft, '\.')[0]<CR>:<cword>"&<CR><CR>
	autocmd FileType javascript,javascript.jsx,sql,ruby,conf,sh
		\ nmap <silent><buffer> K :!zeal --query "<cword>"&<CR><CR>
endif
