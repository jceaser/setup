set term=ansi
set number
set tabstop=4

"set t_ku=^[OA
"set t_kd=^[OB
"set t_kr=^[OC
"set t_kl=^[OD

nmap [3~  x
imap [3~  1xi

try
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn', '\%81v', 100)
catch
endtry

try
    "80 col mark
    highlight MyLineTooLongMarker ctermbg=magenta guibg=Magenta
    call matchadd('MyLineTooLongMarker', '\%81v', 100)
catch
endtry

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

if filereadable(expand("~/.vim/autoload/pathogen.vim"))
    execute pathogen#infect()
    call pathogen#helptags()
    syntax on
    filetype plugin indent on

    " create a bar for airline
    set t_Co=256
    set laststatus=2
    set guifont=Inconsolata-g\ for\ Powerline:h12

    let g:Powerline_symbols = 'fancy'
    let g:airline_powerline_fonts=1
    let g:airline_theme="papercolor"
endif


