"command! -nargs=* DoSurround :call 75_dosurround("(", ")")
"nmap <silent> <F3> :call <SID>dosurround("(", ")", 0)<CR>
"noremap <unique> <script> <Plug>Zsurround <SID>dosurround
"noremap <SID>dosurround :call <SID>dosurround("(", ")")<CR>
"nmap tc <Plug>Zsurround


" function! s:SID()
"     if exists("s:SID_VALUE")
"         return s:SID_VALUE
"     endif
"
"     let s:SID_VALUE = matchstr(expand("<sfile>"), '<SNR>\zs\d\+\ze_SID$')
"
"     return s:SID_VALUE
" endfunction
