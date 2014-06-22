" andon.vim
" Maintaner: Satoshi Murata (muratas)
" URL:       https://github.com/muratas/vim-andon
" Modified:  Jun 25, 2014
" License:   MIT

" Installation: {{{
" --------------------------------------------------
" Two options for installation: manual or Neobundle
"
" Manual Installation:
" 1. Download the andon distribution and unarchive the file.
" 2. Move `andon.vim` to your `.vim/colors` directory.
"
" Neobundle Installation (recommended):
" 1. Install the [Neobundle](https://github.com/Shougo/neobundle.vim).
" 2. Add the bundle: `Neobundle 'muratas/vim-andon'`.
"
" After install, put the following two lines in your `.vimrc`.
"
"     syntax enable
"     colorscheme andon
"
" By default, Vim will use the closest matching cterm equivalent of the RGB
" colours.
"
" However, Due to the limited 256 palette, colours in Vim and gVim will still
" be noticeably different. In order to get a uniform appearance and the way
" that this colourscheme was intended, it is HIGHLY recommended that you:
"
" For iTerm2 users:
" Install the color preset `andon.itermcolors`.
"
"      https://github.com/muratas/andon/iterm2/andon.itermcolors
"
" For OSX Terminal.app users:
" Install the color preset `andon.terminal`.
"
"      https://github.com/muratas/andon/osx-terminal/andon.terminal
"
"}}}

" Initialization: {{{
" --------------------------------------------------
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = expand("<sfile>:t:r")
" }}}

" Palettes: {{{
" --------------------------------------------------
if(has("gui_running"))
  let s:vmode        = "gui"
  let s:p_black      = "#000000"
  let s:p_base       = "#171717"
  let s:p_darkgrey   = "#333333"
  let s:p_moss       = "#51742a"
  let s:p_wall       = "#8e855c"
  let s:p_pond       = "#435e96"
  let s:p_nanten     = "#8f525b"
  let s:p_hydrangea  = "#75658b"
  let s:p_foreground = "#747474"
  let s:p_dark       = "#3b3b3b"
  let s:p_rouge      = "#b44a54"
  let s:p_leaf       = "#869b15"
  let s:p_light      = "#b09a3a"
  let s:p_textile    = "#484680"
  let s:p_wood       = "#b56f3f"
  let s:p_directory  = "#6f7b9e"
  let s:p_comment    = "#414e59"
  let s:p_lightgrey  = "#c8c8c8"
  let s:p_white      = "#ffffff"
else
  let s:vmode        = "cterm"
  let s:p_black      = "232"
  let s:p_base       = "233"
  let s:p_darkgrey   = "235"
  let s:p_moss       = "2"
  let s:p_wall       = "3"
  let s:p_pond       = "4"
  let s:p_nanten     = "5"
  let s:p_hydrangea  = "6"
  let s:p_foreground = "7"
  let s:p_dark       = "8"
  let s:p_rouge      = "9"
  let s:p_leaf       = "10"
  let s:p_light      = "11"
  let s:p_textile    = "12"
  let s:p_wood       = "13"
  let s:p_directory  = "14"
  let s:p_comment    = "15"
  let s:p_lightgrey  = "250"
  let s:p_white      = "255"
endif
  let s:p_none       = "NONE"
" }}}

" Formatting: {{{
" --------------------------------------------------
let s:u = ",underline"
let s:c = ",undercurl"
let s:r = ",reverse"
let s:s = ",standout"
let s:b = ",bold"
let s:i = ",italic"
" }}}

" Primitives: {{{
" --------------------------------------------------
" Palettes
for s:m in ['bg', 'fg']
  exe "let s:".s:m."_black       = ' ".s:vmode.s:m."=".s:p_black      ."'"
  exe "let s:".s:m."_base        = ' ".s:vmode.s:m."=".s:p_base       ."'"
  exe "let s:".s:m."_darkgrey    = ' ".s:vmode.s:m."=".s:p_darkgrey   ."'"
  exe "let s:".s:m."_wood        = ' ".s:vmode.s:m."=".s:p_wood       ."'"
  exe "let s:".s:m."_moss        = ' ".s:vmode.s:m."=".s:p_moss       ."'"
  exe "let s:".s:m."_wall        = ' ".s:vmode.s:m."=".s:p_wall       ."'"
  exe "let s:".s:m."_pond        = ' ".s:vmode.s:m."=".s:p_pond       ."'"
  exe "let s:".s:m."_nanten      = ' ".s:vmode.s:m."=".s:p_nanten     ."'"
  exe "let s:".s:m."_hydrangea   = ' ".s:vmode.s:m."=".s:p_hydrangea  ."'"
  exe "let s:".s:m."_foreground  = ' ".s:vmode.s:m."=".s:p_foreground ."'"
  exe "let s:".s:m."_dark        = ' ".s:vmode.s:m."=".s:p_dark       ."'"
  exe "let s:".s:m."_rouge       = ' ".s:vmode.s:m."=".s:p_rouge      ."'"
  exe "let s:".s:m."_leaf        = ' ".s:vmode.s:m."=".s:p_leaf       ."'"
  exe "let s:".s:m."_light       = ' ".s:vmode.s:m."=".s:p_light      ."'"
  exe "let s:".s:m."_textile     = ' ".s:vmode.s:m."=".s:p_textile    ."'"
  exe "let s:".s:m."_directory   = ' ".s:vmode.s:m."=".s:p_directory  ."'"
  exe "let s:".s:m."_comment     = ' ".s:vmode.s:m."=".s:p_comment    ."'"
  exe "let s:".s:m."_lightgrey   = ' ".s:vmode.s:m."=".s:p_lightgrey  ."'"
  exe "let s:".s:m."_white       = ' ".s:vmode.s:m."=".s:p_white      ."'"
  exe "let s:".s:m."_none        = ' ".s:vmode.s:m."=".s:p_none       ."'"
endfor

" Format
  exe "let s:fmt_none            = ' ".s:vmode."=NONE".          " term=NONE"          ."'"
  exe "let s:fmt_bold            = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b      ."'"
  exe "let s:fmt_underline       = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u      ."'"
  exe "let s:fmt_underlcurl      = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c      ."'"
  exe "let s:fmt_italic          = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i      ."'"
  exe "let s:fmt_standout        = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s      ."'"
  exe "let s:fmt_reverse         = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r      ."'"
" }}}

" Vim Highlighting: (:help highlight-groups) {{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_black       .s:fmt_none
" Conceal
exe "hi! Cursor"        .s:fg_base        .s:bg_white       .s:fmt_none
" CursorIM
" CursorColumn
exe "hi! CursorLine"    .s:fg_none        .s:bg_black       .s:fmt_none
exe "hi! Directory"     .s:fg_directory   .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_foreground  .s:bg_moss        .s:fmt_none
exe "hi! DiffChange"    .s:fg_foreground  .s:bg_leaf        .s:fmt_none
exe "hi! DiffDelete"    .s:fg_foreground  .s:bg_nanten      .s:fmt_none
exe "hi! DiffText"      .s:fg_foreground  .s:bg_directory   .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_rouge       .s:bg_none        .s:fmt_bold
exe "hi! VertSplit"     .s:fg_wall        .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_comment     .s:bg_none        .s:fmt_none
exe "hi! Foldcolumn"    .s:fg_comment     .s:bg_none        .s:fmt_none
exe "hi! Signcolumn"    .s:fg_comment     .s:bg_none        .s:fmt_none
exe "hi! IncSearch"     .s:fg_base        .s:bg_wall        .s:fmt_none
exe "hi! LineNr"        .s:fg_wall        .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_light       .s:bg_none        .s:fmt_none
exe "hi! MatchParen"    .s:fg_black       .s:bg_white       .s:fmt_none
exe "hi! ModeMsg"       .s:fg_moss        .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_moss        .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_darkgrey    .s:bg_none        .s:fmt_none
exe "hi! Normal"        .s:fg_foreground  .s:bg_base        .s:fmt_none
exe "hi! Pmenu"         .s:fg_base        .s:bg_wall        .s:fmt_none
exe "hi! PmenuSel"      .s:fg_base        .s:bg_light       .s:fmt_none
exe "hi! PmenuSbar"     .s:fg_base        .s:bg_wall        .s:fmt_none
exe "hi! PmenuThumb"    .s:fg_base        .s:bg_foreground  .s:fmt_none
exe "hi! Question"      .s:fg_moss        .s:bg_wall        .s:fmt_none
exe "hi! Search"        .s:fg_base        .s:bg_light       .s:fmt_none
exe "hi! SpecialKey"    .s:fg_moss        .s:bg_none        .s:fmt_none
" SpellBad
" SpellCap
" SpellLocal
" SpellRare
exe "hi! StatusLine"    .s:fg_base        .s:bg_wall        .s:fmt_none
exe "hi! StatusLineNC"  .s:fg_lightgrey   .s:bg_comment     .s:fmt_none
" Tabline
" TabLineFill
" TabLineSel
exe "hi! Title"         .s:fg_light        .s:bg_none       .s:fmt_none
exe "hi! Visual"        .s:fg_lightgrey    .s:bg_moss       .s:fmt_none
" VisualNOS
exe "hi! WarningMsg"    .s:fg_white        .s:bg_rouge      .s:fmt_none
" WildMenu"
" }}}

" Git Commit Highlighting: {{{
exe "hi! gitcommitSummary"          .s:fg_foreground  .s:bg_none   .s:fmt_none
exe "hi! gitcommitComment"          .s:fg_comment     .s:bg_none   .s:fmt_none
hi! link gitcommitUntracked gitcommitComment
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitSelected  gitcommitComment
exe "hi! gitcommitUnmerged"         .s:fg_moss        .s:bg_none   .s:fmt_bold
exe "hi! gitcommitOnBranch"         .s:fg_wall  .s:bg_none   .s:fmt_none
exe "hi! gitcommitBranch"           .s:fg_light       .s:bg_none   .s:fmt_bold
hi! link gitcommitNoBranch gitcommitBranch
exe "hi! gitcommitDiscardedType"    .s:fg_rouge       .s:bg_none   .s:fmt_none
exe "hi! gitcommitSelectedType"     .s:fg_moss        .s:bg_none   .s:fmt_none
" gitcommitUnmergedType
" gitcommitType
" gitcommitNoChanges
" gitcommitHeader
exe "hi! gitcommitHeader"           .s:fg_comment  .s:bg_none   .s:fmt_none
exe "hi! gitcommitUntrackedFile"    .s:fg_directory   .s:bg_none   .s:fmt_none
exe "hi! gitcommitDiscardedFile"    .s:fg_rouge       .s:bg_none   .s:fmt_none
exe "hi! gitcommitSelectedFile"     .s:fg_moss        .s:bg_none   .s:fmt_none
exe "hi! gitcommitUnmergedFile"     .s:fg_wall        .s:bg_none   .s:fmt_none
exe "hi! gitcommitFile"             .s:fg_foreground  .s:bg_none   .s:fmt_none
exe "hi! gitcommitDiscardedArrow"   .s:fg_comment       .s:bg_none   .s:fmt_bold
exe "hi! gitcommitSelectedArrow"    .s:fg_comment       .s:bg_none   .s:fmt_bold
exe "hi! gitcommitUnmergedArrow"    .s:fg_comment       .s:bg_none   .s:fmt_bold
" gitcommitArrow
" gitcommitOverflow
" gitcommitBlank
" }}}

" General Syntax Highlighting: (:help group-name) {{{
" ----------------------------------------------------------------------------
exe "hi! Comment"      .s:fg_comment    .s:bg_none  .s:fmt_none

exe "hi! Constant"     .s:fg_nanten     .s:bg_none  .s:fmt_none
exe "hi! String"       .s:fg_rouge      .s:bg_none  .s:fmt_none
" " Character
" " Number
" " Boolean
" " Float

exe "hi! Identifier"   .s:fg_hydrangea  .s:bg_none  .s:fmt_none
exe "hi! Function"     .s:fg_light      .s:bg_none  .s:fmt_none

exe "hi! Statement"    .s:fg_wall       .s:bg_none  .s:fmt_none
" Conditional
" Repeat
" Label
exe "hi! Operator"    .s:fg_directory   .s:bg_none  .s:fmt_none
" Keyword
" Exception

exe "hi! PreProc"     .s:fg_directory   .s:bg_none  .s:fmt_none
" Include
" Define
" Macro
" PreCondit

exe "hi! Type"        .s:fg_wood        .s:bg_none  .s:fmt_none
" StorageClass
exe "hi! Structure"   .s:fg_directory   .s:bg_none  .s:fmt_none
" Typedef

exe "hi! Special"     .s:fg_wall        .s:bg_none  .s:fmt_none
" SpecialChar
" Tag
" Delimiter
" SpecialComment
" Debug

exe "hi! Underlined"  .s:fg_foreground  .s:bg_none  .s:fmt_underline
exe "hi! Ignore"      .s:fg_comment     .s:bg_none  .s:fmt_none
exe "hi! Error"       .s:fg_rouge       .s:bg_none  .s:fmt_bold
exe "hi! Todo"        .s:fg_light       .s:bg_none  .s:fmt_bold

" Todo
" }}}

" HTML Highlighting: {{{
" ----------------------------------------------------------------------------
exe "hi! htmlTag"             .s:fg_foreground  .s:bg_none  .s:fmt_none
exe "hi! htmlEndTag"          .s:fg_foreground  .s:bg_none  .s:fmt_none
exe "hi! htmlTagN"            .s:fg_darkgrey    .s:bg_none  .s:fmt_none
exe "hi! htmlTagName"         .s:fg_moss        .s:bg_none  .s:fmt_none
exe "hi! htmlSpecialTagName"  .s:fg_moss        .s:bg_none  .s:fmt_none
exe "hi! htmlArg"             .s:fg_foreground  .s:bg_none  .s:fmt_none
exe "hi! javaScript"          .s:fg_rouge       .s:bg_none  .s:fmt_none
"" }}}

" Legal: {{{
" ----------------------------------------------------------------------------
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
" Copyright (c) 2012 w0ng
" Copyright (c) 2014 Satoshi Murata
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
" }}}
