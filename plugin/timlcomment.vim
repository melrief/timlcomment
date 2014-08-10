" b:timlcomment_inlinecomment
" b:timlcomment_blockcomment_start
" b:timlcomment_blockcomment_middle
" b:timlcomment_blockcomment_end

function! s:bash_conf()
let b:timlcomment_inlinecomment="#"
let b:timlcomment_blockcomment_start="<#"
let b:timlcomment_blockcomment_middle=" #"
let b:timlcomment_blockcomment_end=" #>"
endfunction

function! s:python_conf()
let b:timlcomment_inlinecomment      ="#"
let b:timlcomment_blockcomment_start ="\"\"\""
let b:timlcomment_blockcomment_middle=""
let b:timlcomment_blockcomment_end   ="\"\"\""
endfunction

function! s:perl_conf()
let b:timlcomment_inlinecomment      ="#"
let b:timlcomment_blockcomment_start ="=begin"
let b:timlcomment_blockcomment_middle=""
let b:timlcomment_blockcomment_end   ="=cut"
endfunction

function! s:c_conf()
let b:timlcomment_inlinecomment      ="//"
let b:timlcomment_blockcomment_start ="/*"
let b:timlcomment_blockcomment_middle=" *"
let b:timlcomment_blockcomment_end   =" */"
endfunction

function! s:haskell_conf()
let b:timlcomment_inlinecomment      ="--"
let b:timlcomment_blockcomment_start ="{-"
let b:timlcomment_blockcomment_middle=" -"
let b:timlcomment_blockcomment_end   =" -}"
endfunction

function! s:lua_conf()
let b:timlcomment_inlinecomment      ="--"
let b:timlcomment_blockcomment_start ="--[==["
let b:timlcomment_blockcomment_middle=""
let b:timlcomment_blockcomment_end   ="]==]"
endfunction

function! s:lisp_conf()
let b:timlcomment_inlinecomment      =";"
let b:timlcomment_blockcomment_start ="#|"
let b:timlcomment_blockcomment_middle=" |"
let b:timlcomment_blockcomment_end   =" |#"
endfunction

au FileType bash call s:bash_conf()
au FileType awk  call s:bash_conf()
au FileType sh     let b:timlcomment_inlinecomment="#"
au FileType python call s:python_conf()
au FileType perl call s:perl_conf()
au FileType ruby call s:perl_conf()
au FileType c          call s:c_conf()
au FileType cpp        call s:c_conf()
au FileType c#         call s:c_conf()
au FileType d          call s:c_conf()
au FileType java       call s:c_conf()
au FileType javascript call s:c_conf()
au FileType scala      call s:c_conf()
au FileType php        call s:c_conf()
au FileType rust       call s:c_conf()
au FileType haskell call s:haskell_conf()
au FileType lua call s:lua_conf()
au FileType vim let b:timlcomment_inlinecomment="\""
au FileType tex    let b:timlcomment_inlinecomment="%"
au FileType prolog let b:timlcomment_inlinecomment="%"
au FileType erlang let b:timlcomment_inlinecomment="%"
au FileType lisp    call s:lisp_conf()
au FileType scheme  call s:lisp_conf()
au FileType clojure let b:timlcomment_inlinecomment=";"

function! Timlcomment_toggle_inline_comment() range
:silent TLeval (require 'timlcomment)<CR>
:TLeval (timlcomment/inline-comment false)<CR>
endfunction

function! Timlcomment_toggle_inline_comment_visual() range
:silent TLeval (require 'timlcomment)<CR>
:TLeval (timlcomment/inline-comment true)<CR>
endfunction

function! Timlcomment_toggle_block_comment() range
:silent TLeval (require 'timlcomment)<CR>
:TLeval (timlcomment/block-comment false)<CR>
endfunction

function! Timlcomment_toggle_block_comment_visual() range
:silent TLeval (require 'timlcomment)<CR>
:TLeval (timlcomment/block-comment true)<CR>
endfunction
