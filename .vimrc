set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set autoindent
set incsearch
set nu
set list
set listchars=tab:\|\
syntax on

set t_Co=256
set background=dark
let g:solarized_termcolors = 256 " gives us the dark background (#1c1c1c)
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

set diffopt+=iwhite
set omnifunc=syntaxcomplete#Complete
set filetype=c
let c_space_errors = 1
let g:showmarks_marks = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
nnoremap K :Man <cword><CR>

filetype plugin on
"au BufNewFile,BufRead *.c autocmd BufWritePre * :%s/\s\+$//e
"au BufNewFile,BufRead *.h autocmd BufWritePre * :%s/\s\+$//e
"au BufNewFile,BufRead *.py autocmd BufWritePre * :%s/\s\+$//e
highligh ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
map <C-o> :TlistToggle<CR>

set tags=tags;

function Addr2Line()
    let address = expand("<cword>")
    let codeline = system("mips-csr3.0-addr2line -e ISS.exe ", address)
    let codeline = substitute(codeline, '\n\+$', '', '')
    if codeline != "??:0"
        let codeline = substitute(codeline, '.*main/iss/', '', '')
        exe '%s#' . address . '#' . codeline . '#g'
    else
        echoerr "No line found for address " . address
    endif
endfunction

function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    exe "cs add " . db . " " . path
  endif
endfunction
call LoadCscope()

if filereadable(".local_vimrc")
    source .local_vimrc
endif
