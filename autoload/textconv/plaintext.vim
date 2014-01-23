
" Convert some characters that often appear in rich text documents (e.g., Word
" and Outlook) but I can't see in Vim. (I'm using Proggy Fonts, YMMV.)
" We only want to convert characters to their normal ASCII equivalents.
function! textconv#plaintext#ToPlainTextLossy()
    silent s/„/,,/eg
    silent s/•/-/eg
    silent s/ˆ/^/eg
    silent s/†/+/eg
    silent s/‡/+/eg
    silent s/…/.../eg
    silent s/“/"/eg
    silent s/‹/</eg
    silent s/‘/'/eg
    silent s/—/--/eg
    silent s/–/-/eg
    silent s/Œ/OE/eg
    silent s/œ/oe/eg
    silent s/”/"/eg
    silent s/›/>/eg
    silent s/’/'/eg
    silent s/‚/,/eg
    silent s/˜/~/eg
    silent s/™/TM/eg
endfunction
