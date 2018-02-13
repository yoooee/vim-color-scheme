set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "YOOOEE"

" Function to set group colors.
function! s:highlight(group, fg, bg, attr)
  exec "hi " . a:group . " guifg=" . a:fg
  exec "hi " . a:group . " ctermfg=" . a:fg
  exec "hi " . a:group . " guibg=" . a:bg
  exec "hi " . a:group . " ctermbg=" . a:bg
  exec "hi " . a:group . " gui=" . a:attr
  exec "hi " . a:group . " cterm=" . a:attr
endfunction

let blue = 26
let light_blue = 75
let purple = 98
let white = 15
let yellow = 220
let orange = 208
let green = 118
let grey = 238

call s:highlight("Normal", 255, 234, "NONE")
call s:highlight("LineNr", 15, 240, "NONE")
call s:highlight("CursorLine", "NONE", grey, "NONE")
call s:highlight("CursorColumn", white, light_blue, "NONE")

" JavaScript
call s:highlight("jsFunction", green, "NONE", "NONE")
call s:highlight("jsReturn", yellow, "NONE", "NONE")
call s:highlight("jsFuncArgs", orange, "NONE", "NONE")
call s:highlight("jsConditional", orange, "NONE", "NONE")
call s:highlight("jsString", light_blue, "NONE", "NONE")

" Typescript
call s:highlight("typescriptStringS", 75, "NONE", "NONE")
call s:highlight("typescriptReserved", 220, "NONE", "NONE")
call s:highlight("typescriptBraces", white, "NONE", "NONE")
call s:highlight("typescriptParens", white, "NONE", "NONE")
call s:highlight("typescriptOpSymbols", white, "NONE", "NONE")
call s:highlight("typescriptIdentifier", yellow, "NONE", "NONE")

" UI
call s:highlight("VertSplit", "NONE", 8, "NONE")
call s:highlight("StatusLine", 7, light_blue, "NONE")
call s:highlight("StatusLineNC", 8, light_blue, "NONE")

" HTML
call s:highlight("htmlTag", purple, "NONE", "NONE")
call s:highlight("htmlTagName", purple, "NONE", "NONE")
call s:highlight("htmlEndTag", purple, "NONE", "NONE")
call s:highlight("htmlString", light_blue, "NONE", "NONE")
call s:highlight("htmlArg", blue, "NONE", "NONE")
call s:highlight("htmlLink", white, "NONE", "NONE")
call s:highlight("htmlH1", white, "NONE", "NONE")
call s:highlight("htmlH2", white, "NONE", "NONE")
call s:highlight("htmlH3", white, "NONE", "NONE")
call s:highlight("htmlH4", white, "NONE", "NONE")
call s:highlight("htmlH5", white, "NONE", "NONE")
call s:highlight("htmlH6", white, "NONE", "NONE")

" NERDTree
call s:highlight("NERDTreeFile", 15, "NONE", "NONE")
call s:highlight("NERDTreeOpenable", 214, "NONE", "NONE")
call s:highlight("NERDTreeHelp", 75, "NONE", "NONE")
