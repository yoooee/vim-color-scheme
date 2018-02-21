" Vim color file - YOOOEE
set background=light
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "YOOOEE"

let Purple = 97
"let Purple2 = 128
"let WPurple = 98
let Dark_Grey = 234
let DarkLight_Grey = 236
let Grey = 242
let Light_Grey = 252
let Yellow = 220
let Orange2 = 172
let Orange= 208
let Pink = 175
let Green = 71
let Lime_Green = 118
let Brown = 137
let Light_Blue = 117
"let WLightBlue = 75
"let WBlue = 26
let Dark_Blue = 32
let White = 15
function! s:highlight(group, fg, bg, attr)
    exec "hi " . a:group . " guifg=" . a:fg
    exec "hi " . a:group . " ctermfg=" . a:fg
    exec "hi " . a:group . " guibg=" . a:bg
    exec "hi " . a:group . " ctermbg=" . a:bg
    exec "hi " . a:group . " gui=" . a:attr
    exec "hi " . a:group . " cterm=" . a:attr
endfunction
" highlighting function
" fun! <sid>h(group, guifg, guibg, ctermfg, ctermbg, gu, ??)
fun! <sid>h(x, gf, gb, cf, cb, a, s)
    if a:gf != '' | exe 'hi ' . a:x . ' guifg=#'  . a:gf                  | endif
    if a:gb != '' | exe 'hi ' . a:x . ' guibg=#'  . a:gb                  | endif
    if a:cf != '' | exe 'hi ' . a:x . ' ctermfg=' . a:cf                  | endif
    if a:cb != '' | exe 'hi ' . a:x . ' ctermbg=' . a:cb                  | endif
    if a:a  != '' | exe 'hi ' . a:x . ' gui='     . a:a . ' cterm=' .  a:a | endif
    if a:s  != '' | exe 'hi ' . a:x . ' guisp=#'  . a:s                   | endif
endfun

" General
cal <sid>h('Normal', '', '', Light_Grey, Dark_Grey, '', '')
cal <sid>h('LineNr', '', '', Grey, '', '', '')
cal <sid>h('CursorLine', '', '', '', DarkLight_Grey, 'none', '')
cal <sid>h('VertSplit', '', '', Dark_Grey, Grey, '', '')
cal <sid>h('Visual', '', '', '', DarkLight_Grey, '', '')
cal <sid>h('TabLine', '', '', '100', '20', 'underline', '')
cal <sid>h('CursorLineNR', '', '', White, '', '', '')
cal <sid>h('Todo', '', '', White, Pink, '', '')
cal <sid>h('MatchParen', '', '', White, Pink, '', '')
cal <sid>h('Search', '', '', Yellow, Pink, '', '')
cal <sid>h('NERDTreeOpenable', '', '', Orange, '', '', '')
cal <sid>h('NERDTreeClosable', '', '', Orange, '', '', '')

" Vim
cal <sid>h('vimLineComment', '', '', Grey, '', '', '')

" TypeScript
cal <sid>h('typescriptStringS', '', '', Light_Blue, '', '', '')
cal <sid>h('typescriptReserved', '', '', Yellow, '', '', '')
cal <sid>h('typescriptOperator', '', '', Yellow, '', '', '')
cal <sid>h('typescriptGlobalObjects', '', '', Green, '', '', '')
cal <sid>h('typescriptDotNotation', '', '', White, '', '', '')
cal <sid>h('typescriptOpSymbols', '', '', White, '', '', '')
cal <sid>h('typescriptEndColons', '', '', White, '', '', '')
cal <sid>h('typescriptParens', '', '', White, '', '', '')
cal <sid>h('typescriptBraces', '', '', White, '', '', '')
cal <sid>h('typescriptLineComment', '', '', Grey, '', '', '')
cal <sid>h('typescriptComment', '', '', Grey, '', '', '')
cal <sid>h('typescriptType', '', '', Pink, '', '', '')
cal <sid>h('typescriptHtmlElemProperties', '', '', Dark_Blue, '', '', '')
cal <sid>h('typescriptIdentifier', '', '', Yellow, '', '', '')
cal <sid>h('typescriptNumber', '', '', Yellow, '', '', '')
cal <sid>h('typescriptFuncKeyword', '', '', Yellow, '', '', '')
cal <sid>h('typescriptBoolean', '', '', Yellow, '', '', '')
cal <sid>h('typescriptRegexpString', '', '', Brown, '', '', '')

" HTML
cal <sid>h('htmlTag', '', '',  Purple, '', '', '')
cal <sid>h('htmlTagN', '', '',  Purple, '', '', '')
cal <sid>h('htmlTagName', '', '',  Purple, '', '', '')
cal <sid>h('htmlEndTag', '', '',  Purple, '', '', '')
cal <sid>h('htmlArg', '', '',  Dark_Blue, '', '', '')
cal <sid>h('htmlString', '', '',  Light_Blue, '', '', '')
cal <sid>h('htmlComment', '', '',  Grey, '', '', '')
cal <sid>h('htmlH1', '', '',  White, '', '', '')
cal <sid>h('htmlH2', '', '',  White, '', '', '')
cal <sid>h('htmlH3', '', '',  White, '', '', '')
cal <sid>h('htmlH4', '', '',  White, '', '', '')
cal <sid>h('htmlH5', '', '',  White, '', '', '')
cal <sid>h('htmlH6', '', '',  White, '', '', '')
cal <sid>h('htmlLink', '', '',  White, '', '', '')

" CSS
cal <sid>h('cssBraces', '', '', White, '', '', '')
cal <sid>h('cssUnitDecorators', '', '', White, '', '', '')
cal <sid>h('cssValueNumber', '', '', Light_Blue, '', '', '')
cal <sid>h('cssColorProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssValueLength', '', '', Light_Blue, '', '', '')
cal <sid>h('cssTextAttr', '', '', Light_Blue, '', '', '')
cal <sid>h('cssPagingProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssFontProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssTextProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssTagName', '', '', Purple, '', '', '')
cal <sid>h('cssDimensionProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssBorderProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssBorderAttr', '', '', Light_Blue, '', '', '')
cal <sid>h('cssFlexibleBoxProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssBoxProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssBoxAttr', '', '', Light_Blue, '', '', '')
cal <sid>h('cssBackgroundProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssUnitDecorators', '', '', Light_Blue, '', '', '')
cal <sid>h('cssPositioningAttr', '', '', Light_Blue, '', '', '')
cal <sid>h('cssPositioningProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssPageProp', '', '', Dark_Blue, '', '', '')
cal <sid>h('cssStringQQ', '', '', Light_Blue, '', '', '')

" SCSS
cal <sid>h('scssSelectorName', '', '', Purple, '', '', '')
cal <sid>h('scssSelectorChar', '', '', White, '', '', '')
cal <sid>h('scssProperty', '', '', Dark_Blue, '', '', '')
cal <sid>h('scssAttribute', '', '', White, '', '', '')
cal <sid>h('scssDefinition', '', '', White, '', '', '')

" JavaScript
cal <sid>h('typescriptStringS', '', '', Light_Blue, '', '', '')
cal <sid>h('jsGlobalNodeObjects', '', '',  Yellow, '', '', '')
cal <sid>h('jsStorageClass', '', '',  Yellow, '', '', '')
cal <sid>h('jsVariableDef', '', '',  Green, '', '', '')
cal <sid>h('jsFunction', '', '',  Yellow, '', '', '')
cal <sid>h('jsFuncName', '', '',  Green, '', '', '')
cal <sid>h('jsFuncCall', '', '',  Green, '', '', '')
cal <sid>h('jsParenIfElse', '', '', Orange, '', '', '')
cal <sid>h('jsIfElseBlock', '', '', Green, '', '', '')
cal <sid>h('jsParen', '', '', '', '', '', '')
cal <sid>h('jsNull', '', '', Yellow, '', '', '')
cal <sid>h('jsThis', '', '', Yellow, '', '', '')
cal <sid>h('jsObjectProp', '', '',  Dark_Blue, '', '', '')
cal <sid>h('jsObjectStringKey', '', '',  Light_Blue, '', '', '')
cal <sid>h('jsNumber', '', '',  Yellow, '', '', '')
cal <sid>h('jsBooleanTrue', '', '',  Yellow, '', '', '')
cal <sid>h('jsBooleanFalse', '', '',  Yellow, '', '', '')
cal <sid>h('jsFuncArgs', '', '',  Orange, '', '', '')
cal <sid>h('jsParen', '', '',  Orange, '', '', '')
cal <sid>h('jsFuncBlock', '', '',  Green, '', '', '')
cal <sid>h('jsGlobalObjects', '', '',  Orange, '', '', '')
cal <sid>h('jsOperator', '', '',  White, '', '', '')
cal <sid>h('jsParens', '', '',  White, '', '', '')
cal <sid>h('jsFuncParens', '', '',  White, '', '', '')
cal <sid>h('jsFuncBraces', '', '',  White, '', '', '')
cal <sid>h('jsObjectBraces', '', '',  White, '', '', '')
cal <sid>h('jsObjectValue', '', '',  Orange, '', '', '')
cal <sid>h('jsBrackets', '', '',  White, '', '', '')
cal <sid>h('jsNoise', '', '',  White, '', '', '')
cal <sid>h('jsNull', '', '',  White, '', '', '')
cal <sid>h('jsTernaryIf', '', '',  Green, '', '', '')
cal <sid>h('jsTernaryIfOperator', '', '',  White, '', '', '')
cal <sid>h('jsComment', '', '',  Grey, '', '', '')
cal <sid>h('jsRegexpString', '', '',  Brown, '', '', '')
cal <sid>h('jsRegexpGroup', '', '',  Brown, '', '', '')
cal <sid>h('jsRegexpCharClass', '', '',  Brown, '', '', '')
cal <sid>h('jsRegexpQuantifier', '', '',  Brown, '', '', '')
cal <sid>h('jsSpecial', '', '',  Brown, '', '', '')
cal <sid>h('jsReturn', '', '',  Yellow, '', '', '')
cal <sid>h('jsString', '', '',  Light_Blue, '', '', '')
cal <sid>h('jsVariableDef', '', '',  Green, '', '', '')
cal <sid>h('jsObjectFuncName', '', '',  Green, '', '', '')
cal <sid>h('jsObjectKey', '', '',  White, '', '', '')
cal <sid>h('jsGlobalNodeObjects', '', '',  Green, '', '', '')
cal <sid>h('jsConditional', '', '',  Yellow, '', '', '')
cal <sid>h('jsArrowFunction', '', '',  White, '', '', '')

" Git
cal <sid>h('DiffAdd', '', '',  Yellow, '', '', '')
