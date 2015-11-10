set hls
set ai
syntax on
set nobackup
set background=dark
set showmatch
set sw=4
set tabstop=4
set softtabstop=4
set expandtab
set cindent
set ruler
set nowrap
set showcmd
set t_Co=256
" let vim support multi-space with backspace
set backspace=2
colorscheme ir_black
"colorscheme desert
set fileencodings=utf-8,gb2312,gbk,cp936,big5,ucs-bom
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
filetype on
filetype plugin indent on
autocmd FileType c,cpp retab
"set nocompatible
execute pathogen#infect()

nnoremap <F5> :TlistToggle<CR><C-W><C-W>
nnoremap <F6> :NERDTreeToggle<CR>
nnoremap <F3> :set wrap<CR>:set linebreak<CR>:set rnu<CR>:set wrapmargin=10<CR>:set cc=120<CR>
nnoremap <F4> :set nowrap<CR>:set nornu<CR>:set cc=0<CR>
nmap <F10> :GitGutterPrevHunk<CR>
nmap <F11> :GitGutterNextHunk<CR>

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
hi TabLine guifg=#90fff0 guibg=#2050d0 ctermfg=black ctermbg=white
hi TabLineSel guifg=#90fff0 guibg=#2050d0 ctermfg=white ctermbg=DarkBlue

hi clear SignColumn

set ttymouse=sgr

" remove tailing space when save file
autocmd BufWritePre *.lua :%s/\s\+$//e

" settings of cscope.
" I use GNU global instead cscope because global is faster.
"set cscopetag
"set cscopeprg=gtags-cscope
"set cscopequickfix=c-,d-,e-,f-,g0,i-,s-,t-
"nmap <silent> <leader>j <ESC>:cstag <c-r><c-w><CR>
"nmap <silent> <leader>g <ESC>:lcs f c <c-r><c-w><cr>:lw<cr>
"nmap <silent> <leader>s <ESC>:lcs f s <c-r><c-w><cr>:lw<cr>
"command! -nargs=+ -complete=dir FindFiles :call FindFiles(<f-args>)
"au VimEnter * call VimEnterCallback()
"au BufAdd *.[ch] call FindGtags(expand('<afile>'))
"au BufWritePost *.[ch] call UpdateGtags(expand('<afile>'))
"
"function! FindFiles(pat, ...)
"     let path = ''
"     for str in a:000
"         let path .= str . ','
"     endfor
"
"     if path == ''
"         let path = &path
"     endif
"
"     echo 'finding...'
"     redraw
"     call append(line('$'), split(globpath(path, a:pat), '\n'))
"     echo 'finding...done!'
"     redraw
"endfunc
"
"function! VimEnterCallback()
"     for f in argv()
"         if fnamemodify(f, ':e') != 'c' && fnamemodify(f, ':e') != 'h'
"             continue
"         endif
"
"         call FindGtags(f)
"     endfor
"endfunc
"
"function! FindGtags(f)
"     let dir = fnamemodify(a:f, ':p:h')
"     while 1
"         let tmp = dir . '/GTAGS'
"         if filereadable(tmp)
"             exe 'cs add ' . tmp . ' ' . dir
"             break
"         elseif dir == '/'
"             break
"         endif
"
"         let dir = fnamemodify(dir, ":h")
"     endwhile
"endfunc
"
"function! UpdateGtags(f)
"     let dir = fnamemodify(a:f, ':p:h')
"     exe 'silent !cd ' . dir . ' && global -u &> /dev/null &'
"endfunction
