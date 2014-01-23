" html entities
command! -range ConvertToEntities <line1>,<line2>call textconv#htmlentities#ToEntities()
command! -range ConvertFromEntities <line1>,<line2>call textconv#htmlentities#FromEntities()

" url encoding
command! -range ConvertToUrlEncoding <line1>,<line2>call textconv#urlencode#ToUrlEncoding()
command! -range ConvertFromUrlEncoding <line1>,<line2>call textconv#urlencode#FromUrlEncoding()

" Lossy conversion to plaintext
command! -range ConvertToPlaintextLossy <line1>,<line2>call textconv#plaintext#ToPlainTextLossy()
