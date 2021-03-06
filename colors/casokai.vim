" Vim color scheme
"
" Author: doncasper
" Note: Based on the molokai theme by Tomas Restrepo

if exists('g:loaded_casokai')
    finish
endif
let g:loaded_mopkai = 1

set background=dark
hi clear
let g:colors_name='casokai'

let c_gnu = 1
let c_comment_strings = 1

if has('nvim') || has('gui_running')
    " syntax-group
    hi Normal          guifg=#DADADA guibg=#232424

    hi Comment         guifg=#8787AF

    hi Constant        guifg=#AF5FFF               gui=bold
    hi String          guifg=#FFFFAF
    hi Character       guifg=#FFFFAF
    hi Number          guifg=#AF5FFF
    hi Boolean         guifg=#AF5FFF               gui=bold
    hi Float           guifg=#AF5FFF

    hi Identifier      guifg=#FE9720
    hi Function        guifg=#5FFF00
    hi Method          guifg=#5FD7FF

    hi Statement       guifg=#e52267               gui=bold
    hi Conditional     guifg=#e52267               gui=bold
    hi Repeat          guifg=#e52267               gui=bold
    hi Label           guifg=#AFFF00               gui=none
    hi Operator        guifg=#5FFF00
    hi Keyword         guifg=#e52267               gui=bold
    hi Exception       guifg=#87FF00               gui=bold

    hi PreProc         guifg=#87FF00
    hi Include         guifg=#0087D7
    hi Define          guifg=#d75f87               gui=italic,bold
    hi Macro           guifg=#d75f87               gui=italic,bold
    hi PreCondit       guifg=#87FF00               gui=bold

    hi Type            guifg=#5FD7FF               gui=none
    hi StorageClass    guifg=#FF8700               gui=italic
    hi Structure       guifg=#0087D7               gui=bold
    hi Typedef         guifg=#5FD7FF               gui=bold

    hi Special         guifg=#5FD7FF               gui=italic
    hi SpecialChar     guifg=#D7005F               gui=bold
    hi Tag             guifg=#D7005F               gui=italic
    hi Delimiter       guifg=#606060
    hi SpecialComment  guifg=#8A8A8A               gui=bold
    hi Debug           guifg=#FFD7FF               gui=bold

    hi Underlined      guifg=#808080               gui=underline
    hi Ignore          guifg=#808080 guibg=#080808
    hi Error           guifg=#FFAFFF guibg=#87005F
    hi Todo            guifg=#FFFFFF guibg=#080808 gui=bold

    hi TabLine         guifg=#E8EBE9 guibg=#484848 gui=none
    hi TabLineSel      guifg=#E8EBE9 guibg=#E52367 gui=bold
    hi TabLineFill                   guibg=#0D0D0D gui=none

    hi Search          guifg=#FFFFFF guibg=#FF5F00

    if has('spell')
        hi SpellBad    guisp=#AF0000 gui=undercurl
        hi SpellCap    guisp=#AF005F gui=undercurl
        hi SpellLocal  guisp=#AF005F gui=undercurl
        hi SpellRare   guisp=NONE    gui=none
    endif

    hi FoldColumn      guifg=#5F87AF guibg=#121212
    hi Folded          guifg=#5F87AF guibg=#000000

    hi Cursor          guifg=#000000 guibg=#5FD7FF
    hi iCursor         guifg=#000000 guibg=#5FD7FF
    hi DiffAdd                       guibg=#13354A
    hi DiffChange      guifg=#89807D guibg=#4C4745
    hi DiffDelete      guifg=#960050 guibg=#1E0010
    hi DiffText                      guibg=#4C4745 gui=italic,bold

    " Git gutter plugin colors
    hi GitGutterAdd    guifg=#005000 guibg=#005000
    hi GitGutterChange guifg=#1c3a51 guibg=#1c3a51
    hi GitGutterDelete guifg=#9f2d23 guibg=#9f2d23

    hi Directory       guifg=#A6E22E               gui=bold
    hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
    hi IncSearch       guifg=#C4BE89 guibg=#000000

    hi SpecialKey      guifg=#66D9EF               gui=italic

    hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
    hi ModeMsg         guifg=#E6DB74
    hi MoreMsg         guifg=#E6DB74

    " complete menu
    hi Pmenu           guifg=#66D9EF guibg=#000000
    hi PmenuSel                      guibg=#808080
    hi PmenuSbar                     guibg=#080808
    hi PmenuThumb      guifg=#66D9EF

    hi Question        guifg=#66D9EF

    " marks
    hi SignColumn      guifg=#A6E22E guibg=#232526
    hi StatusLine      guifg=#455354 guibg=fg
    hi StatusLineNC    guifg=#808080 guibg=#080808
    hi Title           guifg=#ef5939

    hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
    hi VisualNOS                     guibg=#403D3D
    hi Visual                        guibg=#403D3D
    hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
    hi WildMenu        guifg=#66D9EF guibg=#000000

    hi CursorLine                    guibg=#2d2d29
    hi CursorLineNr    guifg=#00d0ff               gui=none
    hi CursorColumn                  guibg=#293739
    hi ColorColumn                   guibg=#232526
    hi LineNr          guifg=#465457 guibg=#232526
    hi NonText         guifg=#465457
    hi SpecialKey      guifg=#465457
endif

if has('nvim') || !has('gui_running')
    " color terminal
    " :help hi-normal-cterm
    if get(g:, 'casokai_is_not_set_normal_ctermbg', 0)
        hi Normal      ctermfg=253
    else
        hi Normal      ctermfg=253  ctermbg=NONE  
    endif

    hi Comment         ctermfg=103

    hi Constant        ctermfg=135               cterm=bold
    hi String          ctermfg=229
    hi Character       ctermfg=229
    hi Number          ctermfg=135
    hi Boolean         ctermfg=135               cterm=bold
    hi Float           ctermfg=135

    hi Identifier      ctermfg=208               cterm=none
    hi Function        ctermfg=118

    hi Statement       ctermfg=161               cterm=bold
    hi Conditional     ctermfg=161               cterm=bold
    hi Repeat          ctermfg=161               cterm=bold
    hi Label           ctermfg=154               cterm=none
    hi Operator        ctermfg=82
    hi keyword         ctermfg=161               cterm=bold
    hi Exception       ctermfg=118               cterm=bold

    hi PreProc         ctermfg=118
    hi Include         ctermfg=32
    hi Define          ctermfg=168
    hi Macro           ctermfg=168
    hi PreCondit       ctermfg=75                cterm=bold

    hi Type            ctermfg=81                cterm=none
    hi StorageClass    ctermfg=208
    hi Structure       ctermfg=32                cterm=bold
    hi Typedef         ctermfg=81

    hi Special         ctermfg=81
    hi SpecialChar     ctermfg=161               cterm=bold
    hi Tag             ctermfg=161
    hi Delimiter       ctermfg=241
    hi SpecialComment  ctermfg=245               cterm=bold
    hi Debug           ctermfg=225               cterm=bold

    hi Underlined      ctermfg=244               cterm=underline
    hi Ignore          ctermfg=244  ctermbg=232
    hi Error           ctermfg=219  ctermbg=89
    hi Todo            ctermfg=231  ctermbg=232  cterm=bold

    hi TabLine         ctermfg=232  ctermbg=249  cterm=none
    hi TabLineSel      ctermfg=232  ctermbg=198  cterm=bold
    hi TabLineFill                  ctermbg=249  cterm=none

    hi Search          ctermfg=232  ctermbg=202  cterm=bold

    if has('spell')
        hi SpellBad                 ctermbg=124
        hi SpellCap                 ctermbg=125
        hi SpellLocal               ctermbg=125
        hi SpellRare   ctermfg=none ctermbg=none cterm=none
    endif

    if get(g:, 'casokai_is_not_set_normal_ctermbg', 0)
        hi FoldColumn  None
        hi FoldColumn  ctermfg=67
    else
        hi FoldColumn  ctermfg=67   ctermbg=233
    endif
    hi Folded          ctermfg=67   ctermbg=234

    hi Cursor          ctermfg=16   ctermbg=253  cterm=none
    hi CursorLine                   ctermbg=235  cterm=none
    hi CursorLineNr    ctermfg=39                cterm=none

    hi DiffAdd                      ctermbg=24
    hi DiffChange      ctermfg=181  ctermbg=239
    hi DiffDelete      ctermfg=162  ctermbg=53
    hi DiffText                     ctermbg=102  cterm=bold

    hi Directory       ctermfg=118               cterm=bold
    hi ErrorMsg        ctermfg=199  ctermbg=16   cterm=bold
    hi IncSearch       ctermfg=193  ctermbg=16

    hi SpecialKey      ctermfg=81

    hi MatchParen      ctermfg=208  ctermbg=233  cterm=bold
    hi ModeMsg         ctermfg=229
    hi MoreMsg         ctermfg=229

    " complete menu
    hi Pmenu           ctermfg=81   ctermbg=16
    hi PmenuSel        ctermfg=81   ctermbg=244
    hi PmenuSbar                    ctermbg=232
    hi PmenuThumb      ctermfg=81

    hi Question        ctermfg=81

    " marks column
    if get(g:, 'casokai_is_not_set_normal_ctermbg', 0)
        hi SignColumn  None
        hi SignColumn  ctermfg=118
    else
        hi SignColumn  ctermfg=118  ctermbg=233
    endif
    hi StatusLine      ctermfg=238  ctermbg=253
    hi StatusLineNC    ctermfg=244  ctermbg=232
    hi Title           ctermfg=166


    hi VertSplit       ctermfg=244  ctermbg=232  cterm=bold
    hi VisualNOS                    ctermbg=238
    hi Visual                       ctermbg=237
    hi WarningMsg      ctermfg=231  ctermbg=238  cterm=bold
    hi WildMenu        ctermfg=81   ctermbg=16

    hi CursorColumn                 ctermbg=236
    hi ColorColumn                  ctermbg=236
    hi LineNr          None
    hi LineNr          ctermfg=250
    hi NonText         ctermfg=59

    hi SpecialKey      ctermfg=59
endif
