" html entities
command! -range ConvertToEntities <line1>,<line2>call textconv#htmlentities#ToEntities()
command! -range ConvertFromEntities <line1>,<line2>call textconv#htmlentities#FromEntities()

" url encoding
command! -range ConvertToUrlEncoding <line1>,<line2>call textconv#urlencode#ToUrlEncoding()
command! -range ConvertFromUrlEncoding <line1>,<line2>call textconv#urlencode#FromUrlEncoding()

" unicode
command! -range ConvertToUnicodeEscapeSequence <line1>,<line2>call textconv#unicode#ToEscapeSequence()
command! -range ConvertFromUnicodeEscapeSequence <line1>,<line2>call textconv#unicode#FromEscapeSequence()

" Lossy conversion to plaintext
command! -range ConvertToPlaintextLossy <line1>,<line2>call textconv#plaintext#ToPlainTextLossy()


if !exists("g:textconv_no_mappings") || !g:textconv_no_mappings
    " TODO: It's not great that these only work in quoted values. It's hard to
    " capture a whole decimal escape sequence.

    " Mnemonic: Coerce to number. Like vim-abolish.
    " To next number: decimal -> hex -> escaped decimal -> hex
    nnoremap crnn "cci"<C-r>=textconv#numeric#convert_to_next_numeral_representation(@c)<CR><Esc>
    xnoremap gcrnn "cc<C-r>=textconv#numeric#convert_to_next_numeral_representation(@c)<CR><Esc>
    " To hex number
    nnoremap crnh "cciw<C-r>=textconv#numeric#convert_to_hex(@c)<CR><Esc>
    " To decimal number
    nnoremap crnd "cciw<C-r>=textconv#numeric#string_to_number(@c)<CR><Esc>
    nnoremap crno "cciw<C-r>=textconv#numeric#convert_to_octal(@c)<CR><Esc>
endif
