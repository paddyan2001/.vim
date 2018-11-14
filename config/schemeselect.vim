"-------scheme select-------
colorscheme gruvbox "desert solarized gruvbox
set background=dark
nmap \vd :set background=dark<cr>
nmap \vl :set background=light<cr>

function! s:toggle_background()
	if ! exists('g:colors_name')
		echomsg 'No colorscheme set'
		return
	endif
	let l:scheme = g:colors_name

	if l:scheme =~# 'dark' || l:scheme =~# 'light'
		" Rotate between different theme backgrounds
		execute 'colorscheme' (l:scheme =~# 'dark'
					\ ? substitute(l:scheme, 'dark', 'light', '')
					\ : substitute(l:scheme, 'light', 'dark', ''))
	else
		execute 'set background='.(&background ==# 'dark' ? 'light' : 'dark')
		if ! exists('g:colors_name')
			execute 'colorscheme' l:scheme
			echomsg 'The colorscheme `'.l:scheme
				\ .'` doesn''t have background variants!'
		else
			echo 'Set colorscheme to '.&background.' mode'
		endif
	endif
endfunction

function! s:toggle_contrast(delta)
	let l:scheme = ''
	if g:colors_name =~# 'solarized8'
		let l:schemes = map(['_low', '_flat', '', '_high'],
			\ '"solarized8_".(&background).v:val')
		let l:contrast = ((a:delta + index(l:schemes, g:colors_name)) % 4 + 4) % 4
		let l:scheme = l:schemes[l:contrast]
	endif
	if l:scheme !=# ''
		execute 'colorscheme' l:scheme
	endif
endfunction
