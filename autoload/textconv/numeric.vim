
" A smarter version of str2nr that detects the base.
function! textconv#numeric#string_to_number(input_str)
    let base = 10
    if a:input_str[:2] =~? "0x"
        let base = 16
    elseif a:input_str[0] == "0"
        let base = 8
    endif
    return str2nr(a:input_str, base)
endf


" Lua uses decimal escape sequences for bytes: \128\238 means 0x80ee.
function! s:convert_decimal_escape_to_hex(escape_sequence)
    let bytes = split(a:escape_sequence, "\\")
    if len(bytes) > 0
        let hex = join(bytes, ", ")
        let format_str = "0x"
        for byte in bytes
            let format_str .= "%02x"
        endfor
        exec 'let hex = printf(format_str,' hex .')'
    endif
    return hex
endf
function! s:convert_number_to_decimal_escape_sequence(input_number)
    let hex_number_str = ""
    if type(a:input_number) == 1
        let hex_number_str = textconv#numeric#string_to_number(a:input_number)
    endif

    let hex_number_str = printf("0x%02x", a:input_number)

    " Strip 0x
    let hex_number_str = hex_number_str[2:]

    " Build sequence
    let escape_sequence = ''
    for i in range(0, len(hex_number_str)-1, 2)
        let byte = hex_number_str[i:i+1]
        if len(byte) > 0
            let escape_sequence .= '\'. str2nr('0x'. byte, 16)
        endif
    endfor
    return escape_sequence
endf
function! textconv#numeric#convert_to_hex(input_str)
    return printf("0x%02x", textconv#numeric#string_to_number(a:input_str))
endf
function! textconv#numeric#convert_to_octal(input_str)
    return printf("0%o", textconv#numeric#string_to_number(a:input_str))
endf
function! textconv#numeric#convert_to_normalized_color(input_str)
    let color = []
    for i in range(0, len(a:input_str)-1, 2)
        let v = textconv#numeric#string_to_number("0x".. a:input_str[i:i+1])
        call add(color, printf("%.2f", v / 255.0))
    endfor
    if len(color) < 4
        call add(color, 1)
    endif
    return color->join(", ")
endf
function! textconv#numeric#convert_to_next_numeral_representation(input_str)
    if a:input_str[0] == '\'
        return s:convert_decimal_escape_to_hex(a:input_str)
    elseif a:input_str[:1] == '0x'
        return s:convert_number_to_decimal_escape_sequence(a:input_str)
    else
        " Convert to hex
        return textconv#numeric#convert_to_hex(a:input_str)
    endif
endf
