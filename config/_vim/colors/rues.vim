"""""""""""""""""""""""""""""""""''''''''
"rues.vim"
 "-rueshyna rewrite at 2009"
"""""""""""""""""""""""""""""""""''''''''
"jai.vim "
" - jaiyalas 2008/01/09 "
""""""""""""""""""""""""""""''''''''''''''''''

set background=dark
hi clear
if exists("syntax_on")
syntax reset
endif

"let g:colors_name="jai"
let g:colors_name="rues"

set t_Co=256


" ------------------------------------------------------------------
 "hi = highlight

 hi Text ctermfg=230 ctermbg=Black cterm=none
 hi NonText ctermfg=none ctermbg=Black cterm=none
 hi Normal ctermfg=230 ctermbg=Black cterm=none
 hi Search ctermfg=White ctermbg=Black cterm=none
 hi Visual ctermfg=Black ctermbg=223 cterm=none
 hi LineNr ctermfg=230 ctermbg=17 cterm=none

 hi Cursor ctermfg=White ctermbg=Gray cterm=none
 hi CursorLine ctermfg=Gray ctermbg=Black cterm=none

 hi StatusLine ctermfg=White ctermbg=53 cterm=Bold
 hi StatusLineNC ctermfg=White ctermbg=53

 hi Tag ctermfg=none
 hi Error ctermfg=221 ctermbg=196
 hi FoldColum ctermbg=Black
 hi Folded ctermfg=White ctermbg=DarkGreen cterm=bold

 hi VertSplit ctermfg=Blue ctermbg=DarkBlue cterm=none
 hi SignColumn ctermfg=LightGreen ctermbg=DarkGreen cterm=none
 hi WildMenu ctermfg=LightGreen ctermbg=DarkGreen cterm=none
 hi Directory ctermfg=LightGreen
 hi ModeMsg ctermfg=White ctermbg=124 cterm=Bold

 " -------------------------------------------------------------

 hi Function ctermfg=26 ctermbg=none cterm=none
 hi Comment ctermfg=White ctermbg=22 cterm=bold
 hi Statement ctermfg=227 ctermbg=none cterm=none
 hi Identifier ctermfg=225 ctermbg=none cterm=none

 hi Constant ctermfg=219 ctermbg=none cterm=underline,bold
 hi Operator ctermfg=212 ctermbg=none cterm=none
 hi Character ctermfg=166 ctermbg=none cterm=bold
 hi Number ctermfg=48 ctermbg=none cterm=none
 hi Boolean ctermfg=White ctermbg=233 cterm=bold
 hi Float ctermfg=50 ctermbg=none cterm=none
 hi String ctermfg=204 ctermbg=none cterm=bold

 hi Define ctermfg=124 ctermbg=none cterm=none
 hi Keyword ctermfg=226 ctermbg=none cterm=none
 hi Repeat ctermfg=51 ctermbg=none cterm=none
 hi Delimiter ctermfg=46 ctermbg=none cterm=none
 hi Special ctermfg=196 ctermbg=none cterm=none
 hi SpecialChar ctermfg=166 ctermbg=none cterm=underline,bold

 hi Include ctermfg=1 ctermbg=none cterm=bold
 hi rubyPseudoVariable ctermfg=141 ctermbg=none cterm=none
 hi rubyInterpolation ctermfg=96 ctermbg=none cterm=none
 hi rubyStringDelimiter ctermfg=1 ctermbg=none cterm=bold
 hi rubySymbol ctermfg=128 ctermbg=none cterm=bold
 hi Type ctermfg=220 ctermbg=none cterm=none
