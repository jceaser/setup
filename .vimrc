set term=ansi

"set t_ku=^[OA
"set t_kd=^[OB
"set t_kr=^[OC
"set t_kl=^[OD

highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
set ts=4

set listchars=tab:>~,nbsp:_,trail:.
set list

exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list

