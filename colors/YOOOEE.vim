" Vim color file - YOOOEE
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'YOOOEE'

let Purple = 97
let hexPurple = '875faf'
"let Purple2 = 128
"let WPurple = 98
let Black = 0
let hexBlack = '000000'
let Dark_Grey = 234
let hexDark_Grey = '1c1c1c'
let DarkLight_Grey = 236
let hexDarkLight_Grey = '303030'
let Grey = 242
let hexGrey = '6c6c6c'
let Light_Grey = 252
let hexLight_Grey = 'd0d0d0'
let Yellow = 220
let hexYellow = 'ffd700'
let Light_Yellow = 230
let hexLight_Yellow = 'ffffd7'
let Orange2 = 172
let hexOrange2 = 'd78700'
let Orange= 208
let hexOrange = 'ff8700'
let Pink = 175
let hexPink = 'd787af'
let Green = 71
let hexGreen = '5faf5f'
let Lime_Green = 118
let hexLime_Green = '87ff00'
let Brown = 137
let hexBrown = 'af875f'
let Light_Blue = 117
let hexLight_Blue = '87d7ff'
"let WLightBlue = 75
"let WBlue = 26
let Dark_Blue = 32
let hexDark_Blue = '0087d7'
let White = 15
let hexWhite = 'ffffff'
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
cal <sid>h('Normal', hexLight_Grey, hexDark_Grey, Light_Grey, Dark_Grey, '', '')
cal <sid>h('LineNr', hexGrey, '', Grey, Green, '', '')
cal <sid>h('CursorLine', '', hexDarkLight_Grey, '', DarkLight_Grey, 'none', '')
cal <sid>h('VertSplit', hexDark_Grey, hexGrey, Dark_Grey, Grey, '', '')
cal <sid>h('Visual', '', hexDarkLight_Grey, '', DarkLight_Grey, '', '')
cal <sid>h('TabLine', '', '', '100', '20', 'underline', '')
cal <sid>h('CursorLineNR', hexWhite, '', White, '', 'none', '')
cal <sid>h('Todo', hexWhite, hexPink, White, Pink, '', '')
cal <sid>h('MatchParen', hexDark_Grey, hexLight_Grey, Dark_Grey, Light_Grey, '', '')
cal <sid>h('Search', hexOrange, hexLight_Yellow, Orange, Light_Yellow, '', '')
cal <sid>h('NERDTreeOpenable', hexOrange, '', Orange, '', '', '')
cal <sid>h('NERDTreeDir', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('NERDTreeDirSlash', hexWhite, '', White, '', '', '')
cal <sid>h('NERDTreeFile', hexWhite, '', White, '', '', '')
cal <sid>h('NERDTreeClosable', hexOrange, '', Orange, '', '', '')
cal <sid>h('NERDTreeCWD', hexOrange, '', Orange, '', '', '')
cal <sid>h('Folded', hexGrey, hexDark_Grey, Grey, Dark_Grey, '', '')
cal <sid>h('EndOfBuffer', hexGrey, hexDark_Grey, Grey, Dark_Grey, '', '')

" Vim
cal <sid>h('vimLineComment', hexGrey, '', Grey, '', '', '')
cal <sid>h('vimComment', hexGrey, '', Grey, '', '', '')
cal <sid>h('vimString', hexLight_Blue, '', Light_Blue, '', '', '')

" TypeScript
cal <sid>h('typescriptStringS', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('typescriptStringD', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('typescriptReserved', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptRepeat', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptConditional', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptStatement', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptDOMObjects', hexPurple, '', Purple, '', '', '')
cal <sid>h('typescriptDOMMethods', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('typescriptPrototype', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('typescriptMessage', hexGreen, '', Green, '', '', '')
cal <sid>h('typescriptOperator', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptGlobalObjects', hexGreen, '', Green, '', '', '')
cal <sid>h('typescriptDotNotation', hexWhite, '', White, '', '', '')
cal <sid>h('typescriptOpSymbols', hexWhite, '', White, '', '', '')
cal <sid>h('typescriptEndColons', hexWhite, '', White, '', '', '')
cal <sid>h('typescriptParens', hexWhite, '', White, '', '', '')
cal <sid>h('typescriptBraces', hexWhite, '', White, '', '', '')
cal <sid>h('typescriptLineComment', hexGrey, '', Grey, '', '', '')
cal <sid>h('typescriptComment', hexGrey, '', Grey, '', '', '')
cal <sid>h('typescriptType', hexPink, '', Pink, '', '', '')
cal <sid>h('typescriptHtmlElemProperties', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('typescriptIdentifier', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptNumber', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptFuncKeyword', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptBoolean', hexYellow, '', Yellow, '', '', '')
cal <sid>h('typescriptRegexpString', hexBrown, '', Brown, '', '', '')
cal <sid>h('typescriptCommentTodo', hexWhite, hexPink, White, Pink, '', '')
cal <sid>h('typescriptDecorators', hexPink, '', Pink, '', '', '')

" HTML
cal <sid>h('htmlTag', hexPurple, '', Purple, '', '', '')
cal <sid>h('htmlTagN', hexPurple, '', Purple, '', '', '')
cal <sid>h('htmlTagName', hexPurple, '', Purple, '', '', '')
cal <sid>h('htmlEndTag', hexPurple, '', Purple, '', '', '')
cal <sid>h('htmlArg', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('htmlString', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('htmlComment', hexGrey, '', Grey, '', '', '')
cal <sid>h('htmlH1', hexWhite, '', White, '', '', '')
cal <sid>h('htmlH2', hexWhite, '', White, '', '', '')
cal <sid>h('htmlH3', hexWhite, '', White, '', '', '')
cal <sid>h('htmlH4', hexWhite, '', White, '', '', '')
cal <sid>h('htmlH5', hexWhite, '', White, '', '', '')
cal <sid>h('htmlH6', hexWhite, '', White, '', '', '')
cal <sid>h('htmlLink', hexWhite, '', White, '', '', '')

" CSS
cal <sid>h('cssBraces', hexWhite, '', White, '', '', '')
cal <sid>h('cssComment', hexGrey, '', Grey, '', '', '')
cal <sid>h('cssUnitDecorators', hexWhite, '', White, '', '', '')
cal <sid>h('cssValueNumber', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('cssColorProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssValueLength', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('cssTextAttr', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('cssPagingProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssFontProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssTextProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssTagName', hexPurple, '', Purple, '', '', '')
cal <sid>h('cssDimensionProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssBorderProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssBorderAttr', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('cssFlexibleBoxProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssBoxProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssBoxAttr', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('cssBackgroundProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssUnitDecorators', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('cssPositioningAttr', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('cssPositioningProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssPageProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('cssStringQQ', hexLight_Blue, '', Light_Blue, '', '', '')

" SCSS
cal <sid>h('scssSelectorName', hexPurple, '', Purple, '', '', '')
cal <sid>h('scssSelectorChar', hexWhite, '', White, '', '', '')
cal <sid>h('scssProperty', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('scssAttribute', hexWhite, '', White, '', '', '')
cal <sid>h('scssDefinition', hexWhite, '', White, '', '', '')
cal <sid>h('scssDefault', hexYellow, '', Yellow, '', '', '')
cal <sid>h('scssVariable', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('scssFunctionName', hexPink, '', Pink, '', '', '')
cal <sid>h('scssAmpersand', hexWhite, '', White, '', '', '')
cal <sid>h('scssComment', hexGrey, '', Grey, '', '', '')

" JavaScript
cal <sid>h('typescriptStringS', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('jsImport', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsFrom', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsGlobalNodeObjects', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsStorageClass', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsVariableDef', hexGreen, '', Green, '', '', '')
cal <sid>h('jsFunction', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsFuncName', hexGreen, '', Green, '', '', '')
cal <sid>h('jsFuncCall', hexGreen, '', Green, '', '', '')
cal <sid>h('jsParenIfElse', hexOrange, '', Orange, '', '', '')
cal <sid>h('jsIfElseBlock', hexGreen, '', Green, '', '', '')
cal <sid>h('jsParen', '', '', '', '', '', '')
cal <sid>h('jsNull', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsThis', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsObjectProp', hexDark_Blue, '', Dark_Blue, '', '', '')
cal <sid>h('jsObjectStringKey', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('jsNumber', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsBooleanTrue', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsBooleanFalse', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsFuncArgs', hexOrange, '', Orange, '', '', '')
cal <sid>h('jsParen', hexOrange, '', Orange, '', '', '')
cal <sid>h('jsFuncBlock', hexGreen, '', Green, '', '', '')
cal <sid>h('jsGlobalObjects', hexOrange, '', Orange, '', '', '')
cal <sid>h('jsOperator', hexWhite, '', White, '', '', '')
cal <sid>h('jsParens', hexWhite, '', White, '', '', '')
cal <sid>h('jsFuncParens', hexWhite, '', White, '', '', '')
cal <sid>h('jsFuncBraces', hexWhite, '', White, '', '', '')
cal <sid>h('jsObjectBraces', hexWhite, '', White, '', '', '')
cal <sid>h('jsObjectValue', hexOrange, '', Orange, '', '', '')
cal <sid>h('jsBrackets', hexWhite, '', White, '', '', '')
cal <sid>h('jsNoise', hexWhite, '', White, '', '', '')
cal <sid>h('jsNull', hexWhite, '', White, '', '', '')
cal <sid>h('jsTernaryIf', hexGreen, '', Green, '', '', '')
cal <sid>h('jsTernaryIfOperator', hexWhite, '', White, '', '', '')
cal <sid>h('jsComment', hexGrey, '', Grey, '', '', '')
cal <sid>h('jsRegexpString', hexBrown, '', Brown, '', '', '')
cal <sid>h('jsRegexpGroup', hexBrown, '', Brown, '', '', '')
cal <sid>h('jsRegexpCharClass', hexBrown, '', Brown, '', '', '')
cal <sid>h('jsRegexpQuantifier', hexBrown, '', Brown, '', '', '')
cal <sid>h('jsSpecial', hexBrown, '', Brown, '', '', '')
cal <sid>h('jsReturn', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsString', hexLight_Blue, '', Light_Blue, '', '', '')
cal <sid>h('jsVariableDef', hexGreen, '', Green, '', '', '')
cal <sid>h('jsObjectFuncName', hexGreen, '', Green, '', '', '')
cal <sid>h('jsObjectKey', hexWhite, '', White, '', '', '')
cal <sid>h('jsGlobalNodeObjects', hexGreen, '', Green, '', '', '')
cal <sid>h('jsConditional', hexYellow, '', Yellow, '', '', '')
cal <sid>h('jsArrowFunction', hexWhite, '', White, '', '', '')
cal <sid>h('jsPrototype', hexPink, '', Pink, '', '', '')

" JSON
cal <sid>h('jsonCommentError', hexGrey, '', '', Grey, '', '')
cal <sid>h('jsonNoQuotesError', hexGrey, '', '', Grey, '', '')

" Git
cal <sid>h('DiffAdd', hexYellow, '', Yellow, '', '', '')

" PMenu
cal <sid>h('Pmenu', hexWhite, hexGrey, White, Grey, '', '')
cal <sid>h('PmenuSel', hexWhite, hexDark_Blue, White, Dark_Blue, '', '')
