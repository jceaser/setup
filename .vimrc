set term=ansi
set number
set tabstop=4

"set t_ku=^[OA
"set t_kd=^[OB
"set t_kr=^[OC
"set t_kl=^[OD

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"80 col mark
highlight MyLineTooLongMarker ctermbg=magenta guibg=Magenta
call matchadd('MyLineTooLongMarker', '\%81v', 100)

set listchars=tab:>~,nbsp:_,trail:.
set list

" shady chars
exec "set listchars=tab:\uBB\uBB,nbsp:~,trail:\uB7"
	set list

"diff colors

"augroup PatchDiffHighlight
"	autocmd;
"	autocmd BufEnter *.patch,*.rej,*.diff systax enable
"augroup end
