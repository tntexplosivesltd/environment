set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set autoindent
set incsearch
set hlsearch
set nu
set list
set listchars=tab:\|\
syntax on

set t_Co=256
set background=dark
let g:solarized_termcolors = 256 " gives us the dark background (#1c1c1c)
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:showmarks_marks = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
nnoremap K :Man <cword><CR>
colorscheme solarized

set diffopt+=iwhite
set omnifunc=syntaxcomplete#Complete
set filetype=c
let c_space_errors = 1

filetype plugin on
"au BufNewFile,BufRead *.c autocmd BufWritePre * :%s/\s\+$//e
"au BufNewFile,BufRead *.h autocmd BufWritePre * :%s/\s\+$//e
"au BufNewFile,BufRead *.py autocmd BufWritePre * :%s/\s\+$//e
highligh ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
set tags=tags;

map <C-o> :TlistToggle<CR>

"disable arrow keys
noremap <up> <NOP>
noremap <down> <NOP>
noremap <left> <NOP>
noremap <right> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let python_highlight_all = 1

function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    exe "cs add " . db . " " . path
  endif
endfunction
"call LoadCscope()


if filereadable(".local_vimrc")
    source .local_vimrc
endif
