
" Convert some characters that often appear in rich text documents (e.g., Word
" and Outlook) but I can't see in Vim. (I'm using Proggy Fonts, YMMV.)
" We only want to convert characters to their normal ASCII equivalents.
function! textconv#plaintext#ToPlainTextLossy()
    silent s/\V\C„/,,/eg
    silent s/\V\C•/-/eg
    silent s/\V\Cˆ/^/eg
    silent s/\V\C†/+/eg
    silent s/\V\C‡/+/eg
    silent s/\V\C…/.../eg
    silent s/\V\C“/"/eg
    silent s/\V\C‹/</eg
    silent s/\V\C‘/'/eg
    silent s/\V\C—/--/eg
    silent s/\V\C–/-/eg
    silent s/\V\CŒ/OE/eg
    silent s/\V\Cœ/oe/eg
    silent s/\V\C”/"/eg
    silent s/\V\C›/>/eg
    silent s/\V\C’/'/eg
    silent s/\V\C‚/,/eg
    silent s/\V\C˜/~/eg
    silent s/\V\C™/TM/eg
endfunction
