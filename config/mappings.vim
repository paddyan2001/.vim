" Key-mappings
"---------------------------------------------------------
let mapleader=","
nmap ; :

" Non-standard {{{

" Double leader key for toggling visual-line mode
nmap <silent> <Leader><Leader> V
vmap <Leader><Leader> <Esc>

" Change current word in a repeatable manner
nnoremap cn *``cgn
nnoremap cN *``cgN

" Change selected word in a repeatable manner
vnoremap <expr> cn "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>" . "``cgn"
vnoremap <expr> cN "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>" . "``cgN"

nnoremap cp yap<S-}>p
nnoremap <leader>a =ip

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
cnoreabbrev bd bd

" Start new line from any cursor position
inoremap <C-Return> <esc>o

" Quick substitute within selected area
xnoremap s :s//g<Left><Left>

nnoremap zl z5l
nnoremap zh z5h

" Improve scroll, credits: https://github.com/Shougo
nnoremap <expr> zz (winline() == (winheight(0)+1) / 2) ?
	\ 'zt' : (winline() == 1) ? 'zb' : 'zz'
noremap <expr> <C-f> max([winheight(0) - 2, 1])
	\ ."\<C-d>".(line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1])
	\ ."\<C-u>".(line('w0') <= 1 ? "H" : "M")
noremap <expr> <C-e> (line("w$") >= line('$') ? "j" : "3\<C-e>")
noremap <expr> <C-y> (line("w0") <= 1         ? "k" : "3\<C-y>")

" Window control
if exists(':terminal') && has('vim')
    set termwinkey=<c-w>
endif
nnoremap <C-x> <C-w>x<C-w>w
nnoremap <silent><C-w>z :vert resize<CR>:resize<CR>:normal! ze<CR>

" Select blocks after indenting
xnoremap < <gv
xnoremap > >gv|

" Use tab for indenting
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nmap <Tab>   >>_
nmap <S-Tab> <<_

" Select last paste
nnoremap <expr> gp '`['.strpart(getregtype(), 0, 1).'`]'

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
vnoremap <silent><Leader>w <Esc>:write<CR>

" Save a file with sudo
" http://forrst.com/posts/Use_w_to_sudo_write_a_file_with_Vim-uAN
cmap W!! w !sudo tee % >/dev/null

" }}} Editor UI {{{
" ---------

" I like to :quit with 'q', shrug.
nnoremap <silent> q :<C-u>:quit<CR>

" Macros
nnoremap Q q
nnoremap gQ @q

" Toggle editor visuals
nmap <silent> <Leader>ts :setlocal spell!<cr>
nmap <silent> <Leader>tn :setlocal nonumber!<CR>
nmap <silent> <Leader>tl :setlocal nolist!<CR>
nmap <silent> <space> :nohlsearch<CR>
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
nnoremap <silent> \c  :close<CR>
nnoremap <silent> \x  :<C-u>call <SID>BufferEmpty()<CR>

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

if has('mac')
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
