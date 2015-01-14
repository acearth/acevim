"ignore upper/lower alphabeta case
syntax case ignore

syntax keyword txtKword NOTE END

highlight link txtKword Keyword

"\v ->very magic mode
syntax match txtComment "\v^#.+$" 
syntax match txtComment "\v\/\/.+$" 

highlight link txtComment Comment
syntax match txtNumber "\v\d"
highlight link txtNumber Number

syntax region txtCite start="\"" end="\""
highlight link txtCite String

" if a line is longer than 160 chars, show it as error
syntax match longline1 "^.\{160,}$"
highlight link longline1 Error
