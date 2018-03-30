if exists("b:current_syntax")
    finish
endif

syn match fF  "[fF]"
syn match uU  "[uU]"
syn match cC  "[cC]"
syn match kK  "[kK]"

syn region RainbowFucks start="FUCK" end="$" contains=Rainbow

syn match Rainbow ".\{1,6}" contains=red,orange,yellow,green,blue,violet contained

syn match violet "." nextgroup=red contained
syn match blue "." nextgroup=violet contained
syn match green "." nextgroup=blue contained
syn match yellow "." nextgroup=green contained
syn match orange "." nextgroup=yellow contained
syn match red "." nextgroup=orange contained

hi red ctermfg=1 guifg=#ff4444
hi orange ctermfg=9 guifg=#ffaf00
hi yellow ctermfg=11 guifg=#ffff00
hi green ctermfg=2 guifg=#87ff87
hi blue ctermfg=6 guifg=#0087ff
hi violet ctermfg=4 guifg=#d787ff

hi link fF red
hi link uU yellow
hi link cC green
hi link kK blue

let b:current_syntax = "fuck"

" vim:set et sts=4 sw=4 ts=8:
