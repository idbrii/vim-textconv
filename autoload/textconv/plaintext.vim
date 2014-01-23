
" Convert some characters that often appear in rich text documents (e.g., Word
" and Outlook) but I can't see in Vim. (I'm using Proggy Fonts, YMMV.)
" We only want to convert characters to their normal ASCII equivalents.
function! textconv#plaintext#ToPlainTextLossy()
    silent s/„/,,/e
    silent s/•/-/e
    silent s/ˆ/^/e
    silent s/†/+/e
    silent s/‡/+/e
    silent s/…/.../e
    silent s/“/"/e
    silent s/‹/</e
    silent s/‘/'/e
    silent s/—/--/e
    silent s/–/-/e
    silent s/Œ/OE/e
    silent s/œ/oe/e
    silent s/”/"/e
    silent s/›/>/e
    silent s/’/'/e
    silent s/‚/,/e
    silent s/˜/~/e
    silent s/™/TM/e
endfunction
