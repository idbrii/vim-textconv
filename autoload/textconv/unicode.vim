" Sourced from https://gist.github.com/ivandrofly/0fe20773bd712b303f78
"
" Using only some of the characters because otherwise replacement is slow, I'm
" mostly targeting English writing: punctuation and Greek (for math).

function! textconv#unicode#ToEscapeSequence()
    " We want exact matches:
    " \V to prevent anything interpreted as magic.
    " \C to prevent case insensitivity (some characters like ſ match other
    "    character pairs when using 'ignorecase').

    " Latin-1 punctuation and symbols (Based on ISO/IEC 8859-1 (aka Latin-1) from here.)
    silent s/\V\C¡/\\u00A1/eg " INVERTED EXCLAMATION MARK (Spanish, Asturian, Galician)
    silent s/\V\C¢/\\u00A2/eg " CENT SIGN
    silent s/\V\C£/\\u00A3/eg " POUND SIGN (pound sterling, Irish punt, Italian lira, Turkish lira, etc.)
    silent s/\V\C¤/\\u00A4/eg " CURRENCY SIGN
    silent s/\V\C¥/\\u00A5/eg " YEN SIGN = yuan sign
    silent s/\V\C¦/\\u00A6/eg " BROKEN BAR = broken vertical bar = parted rule (in typography)
    silent s/\V\C§/\\u00A7/eg " SECTION SIGN
    silent s/\V\C¨/\\u00A8/eg " DIAERESIS
    silent s/\V\C©/\\u00A9/eg " COPYRIGHT SIGN
    silent s/\V\Cª/\\u00AA/eg " FEMININE ORDINAL INDICATOR
    silent s/\V\C«/\\u00AB/eg " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK = left guillemet = chevrons (in typography)
    silent s/\V\C¬/\\u00AC/eg " NOT SIGN = angled dash (in typography)
    " U+00AD (alt-0173)	SOFT HYPHEN = discretionary hyphen
    silent s/\V\C®/\\u00AE/eg " REGISTERED SIGN = registered trade mark sign
    silent s/\V\C¯/\\u00AF/eg " MACRON = overline, APL overbar
    silent s/\V\C°/\\u00B0/eg " DEGREE SIGN
    silent s/\V\C±/\\u00B1/eg " PLUS-MINUS SIGN
    silent s/\V\C²/\\u00B2/eg " SUPERSCRIPT TWO = squared
    silent s/\V\C³/\\u00B3/eg " SUPERSCRIPT THREE = cubed
    silent s/\V\C´/\\u00B4/eg " ACUTE ACCENT
    silent s/\V\Cµ/\\u00B5/eg " MICRO SIGN
    silent s/\V\C¶/\\u00B6/eg " PILCROW SIGN = paragraph sign
    silent s/\V\C·/\\u00B7/eg " MIDDLE DOT = midpoint (in typography) = Georgian comma = Greek middle dot (ano teleia)
    silent s/\V\C¸/\\u00B8/eg " CEDILLA
    silent s/\V\C¹/\\u00B9/eg " SUPERSCRIPT ONE
    silent s/\V\Cº/\\u00BA/eg " MASCULINE ORDINAL INDICATOR
    silent s/\V\C»/\\u00BB/eg " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK = right guillemet
    silent s/\V\C¼/\\u00BC/eg " VULGAR FRACTION ONE QUARTER
    silent s/\V\C½/\\u00BD/eg " VULGAR FRACTION ONE HALF
    silent s/\V\C¾/\\u00BE/eg " VULGAR FRACTION THREE QUARTERS
    silent s/\V\C¿/\\u00BF/eg " INVERTED QUESTION MARK = turned question mark

    " Mathematical operator
    silent s/\V\C×/\\u00D7/eg " MULTIPLICATION SIGN = z notation Cartesian product

    " Mathematical operator
    silent s/\V\C÷/\\u00F7/eg " DIVISION SIGN

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.) (* ISO 6438 gives lowercase of 0197 as 026A, not 0268) (* obsoleted by IPA in 1989) (* obsoleted by IPA in 1989)
    silent s/\V\Cɸ/\\u0278/eg " LATIN SMALL LETTER PHI
    silent s/\V\Cɹ/\\u0279/eg " LATIN SMALL LETTER TURNED R

    " Greek Letters
    silent s/\V\CΑ/\\u0391/eg " GREEK CAPITAL LETTER ALPHA
    silent s/\V\CΒ/\\u0392/eg " GREEK CAPITAL LETTER BETA
    silent s/\V\CΓ/\\u0393/eg " GREEK CAPITAL LETTER GAMMA = gamma function
    silent s/\V\CΔ/\\u0394/eg " GREEK CAPITAL LETTER DELTA
    silent s/\V\CΕ/\\u0395/eg " GREEK CAPITAL LETTER EPSILON
    silent s/\V\CΖ/\\u0396/eg " GREEK CAPITAL LETTER ZETA
    silent s/\V\CΗ/\\u0397/eg " GREEK CAPITAL LETTER ETA
    silent s/\V\CΘ/\\u0398/eg " GREEK CAPITAL LETTER THETA
    silent s/\V\CΙ/\\u0399/eg " GREEK CAPITAL LETTER IOTA = iota adscript
    silent s/\V\CΚ/\\u039A/eg " GREEK CAPITAL LETTER KAPPA
    silent s/\V\CΛ/\\u039B/eg " GREEK CAPITAL LETTER LAMDA
    silent s/\V\CΜ/\\u039C/eg " GREEK CAPITAL LETTER MU
    silent s/\V\CΝ/\\u039D/eg " GREEK CAPITAL LETTER NU
    silent s/\V\CΞ/\\u039E/eg " GREEK CAPITAL LETTER XI
    silent s/\V\CΟ/\\u039F/eg " GREEK CAPITAL LETTER OMICRON
    silent s/\V\CΠ/\\u03A0/eg " GREEK CAPITAL LETTER PI
    silent s/\V\CΡ/\\u03A1/eg " GREEK CAPITAL LETTER RHO
    silent s/\V\CΣ/\\u03A3/eg " GREEK CAPITAL LETTER SIGMA
    silent s/\V\CΤ/\\u03A4/eg " GREEK CAPITAL LETTER TAU
    silent s/\V\CΥ/\\u03A5/eg " GREEK CAPITAL LETTER UPSILON
    silent s/\V\CΦ/\\u03A6/eg " GREEK CAPITAL LETTER PHI
    silent s/\V\CΧ/\\u03A7/eg " GREEK CAPITAL LETTER CHI
    silent s/\V\CΨ/\\u03A8/eg " GREEK CAPITAL LETTER PSI
    silent s/\V\CΩ/\\u03A9/eg " GREEK CAPITAL LETTER OMEGA
    silent s/\V\Cα/\\u03B1/eg " GREEK SMALL LETTER ALPHA
    silent s/\V\Cβ/\\u03B2/eg " GREEK SMALL LETTER BETA
    silent s/\V\Cγ/\\u03B3/eg " GREEK SMALL LETTER GAMMA
    silent s/\V\Cδ/\\u03B4/eg " GREEK SMALL LETTER DELTA
    silent s/\V\Cε/\\u03B5/eg " GREEK SMALL LETTER EPSILON
    silent s/\V\Cζ/\\u03B6/eg " GREEK SMALL LETTER ZETA
    silent s/\V\Cη/\\u03B7/eg " GREEK SMALL LETTER ETA
    silent s/\V\Cθ/\\u03B8/eg " GREEK SMALL LETTER THETA
    silent s/\V\Cι/\\u03B9/eg " GREEK SMALL LETTER IOTA
    silent s/\V\Cκ/\\u03BA/eg " GREEK SMALL LETTER KAPPA
    silent s/\V\Cλ/\\u03BB/eg " GREEK SMALL LETTER LAMDA = lambda
    silent s/\V\Cμ/\\u03BC/eg " GREEK SMALL LETTER MU
    silent s/\V\Cν/\\u03BD/eg " GREEK SMALL LETTER NU
    silent s/\V\Cξ/\\u03BE/eg " GREEK SMALL LETTER XI
    silent s/\V\Cο/\\u03BF/eg " GREEK SMALL LETTER OMICRON
    silent s/\V\Cπ/\\u03C0/eg " GREEK SMALL LETTER PI
    silent s/\V\Cρ/\\u03C1/eg " GREEK SMALL LETTER RHO
    silent s/\V\Cς/\\u03C2/eg " GREEK SMALL LETTER FINAL SIGMA = stigma (the Modern Greek name for this letterform)
    silent s/\V\Cσ/\\u03C3/eg " GREEK SMALL LETTER SIGMA
    silent s/\V\Cτ/\\u03C4/eg " GREEK SMALL LETTER TAU
    silent s/\V\Cυ/\\u03C5/eg " GREEK SMALL LETTER UPSILON
    silent s/\V\Cφ/\\u03C6/eg " GREEK SMALL LETTER PHI
    silent s/\V\Cχ/\\u03C7/eg " GREEK SMALL LETTER CHI
    silent s/\V\Cψ/\\u03C8/eg " GREEK SMALL LETTER PSI
    silent s/\V\Cω/\\u03C9/eg " GREEK SMALL LETTER OMEGA

    " Greek letters
    silent s/\V\Cᴦ/\\u1D26/eg " GREEK LETTER SMALL CAPITAL GAMMA
    silent s/\V\Cᴧ/\\u1D27/eg " GREEK LETTER SMALL CAPITAL LAMDA
    silent s/\V\Cᴨ/\\u1D28/eg " GREEK LETTER SMALL CAPITAL PI
    silent s/\V\Cᴩ/\\u1D29/eg " GREEK LETTER SMALL CAPITAL RHO
    silent s/\V\Cᴪ/\\u1D2A/eg " GREEK LETTER SMALL CAPITAL PSI

    " Dashes
    silent s/\V\C‐/\\u2010/eg " HYPHEN
    silent s/\V\C‑/\\u2011/eg " NON-BREAKING HYPHEN
    silent s/\V\C‒/\\u2012/eg " FIGURE DASH
    silent s/\V\C–/\\u2013/eg " EN DASH
    silent s/\V\C—/\\u2014/eg " EM DASH
    silent s/\V\C―/\\u2015/eg " HORIZONTAL BAR = quotation dash

    " General punctuation
    silent s/\V\C‖/\\u2016/eg " DOUBLE VERTICAL LINE
    silent s/\V\C‗/\\u2017/eg " DOUBLE LOW LINE

    " Quotation marks and apostrophe (Use of quotation marks differs by language. The character names cannot reflect actual usage for all languages.)
    silent s/\V\C‘/\\u2018/eg " LEFT SINGLE QUOTATION MARK = single turned comma quotation mark
    silent s/\V\C’/\\u2019/eg " RIGHT SINGLE QUOTATION MARK = single comma quotation mark
    silent s/\V\C‚/\\u201A/eg " SINGLE LOW-9 QUOTATION MARK = low single comma quotation mark
    silent s/\V\C‛/\\u201B/eg " SINGLE HIGH-REVERSED-9 QUOTATION MARK = single reversed comma quotation mark
    silent s/\V\C“/\\u201C/eg " LEFT DOUBLE QUOTATION MARK = double turned comma quotation mark
    silent s/\V\C”/\\u201D/eg " RIGHT DOUBLE QUOTATION MARK = double comma quotation mark
    silent s/\V\C„/\\u201E/eg " DOUBLE LOW-9 QUOTATION MARK = low double comma quotation mark
    silent s/\V\C‟/\\u201F/eg " DOUBLE HIGH-REVERSED-9 QUOTATION MARK = double reversed comma quotation mark

    " General punctuation
    silent s/\V\C†/\\u2020/eg " DAGGER = obelisk, obelus, long cross
    silent s/\V\C‡/\\u2021/eg " DOUBLE DAGGER = diesis, double obelisk
    silent s/\V\C•/\\u2022/eg " BULLET = black small circle
    silent s/\V\C‣/\\u2023/eg " TRIANGULAR BULLET
    silent s/\V\C․/\\u2024/eg " ONE DOT LEADER
    silent s/\V\C‥/\\u2025/eg " TWO DOT LEADER
    silent s/\V\C…/\\u2026/eg " HORIZONTAL ELLIPSIS = three dot leader
    silent s/\V\C‧/\\u2027/eg " HYPHENATION POINT
    silent s/\V\C‰/\\u2030/eg " PER MILLE SIGN = permille, per thousand
    silent s/\V\C‱/\\u2031/eg " PER TEN THOUSAND SIGN = permyriad
    silent s/\V\C′/\\u2032/eg " PRIME = minutes, feet
    silent s/\V\C″/\\u2033/eg " DOUBLE PRIME = seconds, inches
    silent s/\V\C‴/\\u2034/eg " TRIPLE PRIME = lines (old measure, 1/12 of an inch)
    silent s/\V\C‵/\\u2035/eg " REVERSED PRIME
    silent s/\V\C‶/\\u2036/eg " REVERSED DOUBLE PRIME
    silent s/\V\C‷/\\u2037/eg " REVERSED TRIPLE PRIME
    silent s/\V\C‸/\\u2038/eg " CARET

    " Quotation marks
    silent s/\V\C‹/\\u2039/eg " SINGLE LEFT-POINTING ANGLE QUOTATION MARK = left pointing single guillemet
    silent s/\V\C›/\\u203A/eg " SINGLE RIGHT-POINTING ANGLE QUOTATION MARK = right pointing single guillemet

    " General punctuation
    silent s/\V\C※/\\u203B/eg " REFERENCE MARK = Japanese kome = Urdu paragraph separator

    " Double punctuation for vertical text
    silent s/\V\C‼/\\u203C/eg " DOUBLE EXCLAMATION MARK

    " General punctuation
    silent s/\V\C‽/\\u203D/eg " INTERROBANG
    silent s/\V\C‾/\\u203E/eg " OVERLINE = spacing overscore
    silent s/\V\C‿/\\u203F/eg " UNDERTIE = Greek enotikon
    silent s/\V\C⁀/\\u2040/eg " CHARACTER TIE = z notation sequence concatenation
    silent s/\V\C⁁/\\u2041/eg " CARET INSERTION POINT
    silent s/\V\C⁂/\\u2042/eg " ASTERISM
    silent s/\V\C⁃/\\u2043/eg " HYPHEN BULLET
    silent s/\V\C⁄/\\u2044/eg " FRACTION SLASH = solidus (in typography)
    silent s/\V\C⁅/\\u2045/eg " LEFT SQUARE BRACKET WITH QUILL
    silent s/\V\C⁆/\\u2046/eg " RIGHT SQUARE BRACKET WITH QUILL

    " Double punctuation for vertical text
    silent s/\V\C⁇/\\u2047/eg " DOUBLE QUESTION MARK
    silent s/\V\C⁈/\\u2048/eg " QUESTION EXCLAMATION MARK
    silent s/\V\C⁉/\\u2049/eg " EXCLAMATION QUESTION MARK

    " General punctuation
    silent s/\V\C⁊/\\u204A/eg " TIRONIAN SIGN ET
    silent s/\V\C⁋/\\u204B/eg " REVERSED PILCROW SIGN
    silent s/\V\C⁌/\\u204C/eg " BLACK LEFTWARDS BULLET
    silent s/\V\C⁍/\\u204D/eg " BLACK RIGHTWARDS BULLET
    silent s/\V\C⁎/\\u204E/eg " LOW ASTERISK
    silent s/\V\C⁏/\\u204F/eg " REVERSED SEMICOLON
    silent s/\V\C⁐/\\u2050/eg " CLOSE UP
    silent s/\V\C⁑/\\u2051/eg " TWO ASTERISKS ALIGNED VERTICALLY
    silent s/\V\C⁒/\\u2052/eg " COMMERCIAL MINUS SIGN = abzüglich
    silent s/\V\C⁓/\\u2053/eg " SWUNG DASH
    silent s/\V\C⁔/\\u2054/eg " INVERTED UNDERTIE
    silent s/\V\C⁕/\\u2055/eg " FLOWER PUNCTUATION MARK = phul, puspika
    silent s/\V\C⁗/\\u2057/eg " QUADRUPLE PRIME

    " Superscripts (See also superscript Latin letters in the Spacing Modifier Letters block starting at 02B0.)
    silent s/\V\C⁰/\\u2070/eg " SUPERSCRIPT ZERO
    silent s/\V\Cⁱ/\\u2071/eg " SUPERSCRIPT LATIN SMALL LETTER I
    silent s/\V\C⁴/\\u2074/eg " SUPERSCRIPT FOUR
    silent s/\V\C⁵/\\u2075/eg " SUPERSCRIPT FIVE
    silent s/\V\C⁶/\\u2076/eg " SUPERSCRIPT SIX
    silent s/\V\C⁷/\\u2077/eg " SUPERSCRIPT SEVEN
    silent s/\V\C⁸/\\u2078/eg " SUPERSCRIPT EIGHT
    silent s/\V\C⁹/\\u2079/eg " SUPERSCRIPT NINE
    silent s/\V\C⁺/\\u207A/eg " SUPERSCRIPT PLUS SIGN
    silent s/\V\C⁻/\\u207B/eg " SUPERSCRIPT MINUS
    silent s/\V\C⁼/\\u207C/eg " SUPERSCRIPT EQUALS SIGN
    silent s/\V\C⁽/\\u207D/eg " SUPERSCRIPT LEFT PARENTHESIS
    silent s/\V\C⁾/\\u207E/eg " SUPERSCRIPT RIGHT PARENTHESIS
    silent s/\V\Cⁿ/\\u207F/eg " SUPERSCRIPT LATIN SMALL LETTER N

    " Subscripts
    silent s/\V\C₀/\\u2080/eg " SUBSCRIPT ZERO
    silent s/\V\C₁/\\u2081/eg " SUBSCRIPT ONE
    silent s/\V\C₂/\\u2082/eg " SUBSCRIPT TWO
    silent s/\V\C₃/\\u2083/eg " SUBSCRIPT THREE
    silent s/\V\C₄/\\u2084/eg " SUBSCRIPT FOUR
    silent s/\V\C₅/\\u2085/eg " SUBSCRIPT FIVE
    silent s/\V\C₆/\\u2086/eg " SUBSCRIPT SIX
    silent s/\V\C₇/\\u2087/eg " SUBSCRIPT SEVEN
    silent s/\V\C₈/\\u2088/eg " SUBSCRIPT EIGHT
    silent s/\V\C₉/\\u2089/eg " SUBSCRIPT NINE
    silent s/\V\C₊/\\u208A/eg " SUBSCRIPT PLUS SIGN
    silent s/\V\C₋/\\u208B/eg " SUBSCRIPT MINUS
    silent s/\V\C₌/\\u208C/eg " SUBSCRIPT EQUALS SIGN
    silent s/\V\C₍/\\u208D/eg " SUBSCRIPT LEFT PARENTHESIS
    silent s/\V\C₎/\\u208E/eg " SUBSCRIPT RIGHT PARENTHESIS
endf



function! textconv#unicode#FromEscapeSequence()
    " Latin-1 punctuation and symbols (Based on ISO/IEC 8859-1 (aka Latin-1) from here.)
    silent s/\V\C\\u00A1/¡/eg " INVERTED EXCLAMATION MARK (Spanish, Asturian, Galician)
    silent s/\V\C\\u00A2/¢/eg " CENT SIGN
    silent s/\V\C\\u00A3/£/eg " POUND SIGN (pound sterling, Irish punt, Italian lira, Turkish lira, etc.)
    silent s/\V\C\\u00A4/¤/eg " CURRENCY SIGN
    silent s/\V\C\\u00A5/¥/eg " YEN SIGN = yuan sign
    silent s/\V\C\\u00A6/¦/eg " BROKEN BAR = broken vertical bar = parted rule (in typography)
    silent s/\V\C\\u00A7/§/eg " SECTION SIGN
    silent s/\V\C\\u00A8/¨/eg " DIAERESIS
    silent s/\V\C\\u00A9/©/eg " COPYRIGHT SIGN
    silent s/\V\C\\u00AA/ª/eg " FEMININE ORDINAL INDICATOR
    silent s/\V\C\\u00AB/«/eg " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK = left guillemet = chevrons (in typography)
    silent s/\V\C\\u00AC/¬/eg " NOT SIGN = angled dash (in typography)
    " U+00AD (alt-0173)	SOFT HYPHEN = discretionary hyphen
    silent s/\V\C\\u00AE/®/eg " REGISTERED SIGN = registered trade mark sign
    silent s/\V\C\\u00AF/¯/eg " MACRON = overline, APL overbar
    silent s/\V\C\\u00B0/°/eg " DEGREE SIGN
    silent s/\V\C\\u00B1/±/eg " PLUS-MINUS SIGN
    silent s/\V\C\\u00B2/²/eg " SUPERSCRIPT TWO = squared
    silent s/\V\C\\u00B3/³/eg " SUPERSCRIPT THREE = cubed
    silent s/\V\C\\u00B4/´/eg " ACUTE ACCENT
    silent s/\V\C\\u00B5/µ/eg " MICRO SIGN
    silent s/\V\C\\u00B6/¶/eg " PILCROW SIGN = paragraph sign
    silent s/\V\C\\u00B7/·/eg " MIDDLE DOT = midpoint (in typography) = Georgian comma = Greek middle dot (ano teleia)
    silent s/\V\C\\u00B8/¸/eg " CEDILLA
    silent s/\V\C\\u00B9/¹/eg " SUPERSCRIPT ONE
    silent s/\V\C\\u00BA/º/eg " MASCULINE ORDINAL INDICATOR
    silent s/\V\C\\u00BB/»/eg " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK = right guillemet
    silent s/\V\C\\u00BC/¼/eg " VULGAR FRACTION ONE QUARTER
    silent s/\V\C\\u00BD/½/eg " VULGAR FRACTION ONE HALF
    silent s/\V\C\\u00BE/¾/eg " VULGAR FRACTION THREE QUARTERS
    silent s/\V\C\\u00BF/¿/eg " INVERTED QUESTION MARK = turned question mark

    " Mathematical operator
    silent s/\V\C\\u00D7/×/eg " MULTIPLICATION SIGN = z notation Cartesian product

    " Mathematical operator
    silent s/\V\C\\u00F7/÷/eg " DIVISION SIGN

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.) (* ISO 6438 gives lowercase of 0197 as 026A, not 0268) (* obsoleted by IPA in 1989) (* obsoleted by IPA in 1989)
    silent s/\V\C\\u0278/ɸ/eg " LATIN SMALL LETTER PHI
    silent s/\V\C\\u0279/ɹ/eg " LATIN SMALL LETTER TURNED R

    " Greek Letters
    silent s/\V\C\\u0391/Α/eg " GREEK CAPITAL LETTER ALPHA
    silent s/\V\C\\u0392/Β/eg " GREEK CAPITAL LETTER BETA
    silent s/\V\C\\u0393/Γ/eg " GREEK CAPITAL LETTER GAMMA = gamma function
    silent s/\V\C\\u0394/Δ/eg " GREEK CAPITAL LETTER DELTA
    silent s/\V\C\\u0395/Ε/eg " GREEK CAPITAL LETTER EPSILON
    silent s/\V\C\\u0396/Ζ/eg " GREEK CAPITAL LETTER ZETA
    silent s/\V\C\\u0397/Η/eg " GREEK CAPITAL LETTER ETA
    silent s/\V\C\\u0398/Θ/eg " GREEK CAPITAL LETTER THETA
    silent s/\V\C\\u0399/Ι/eg " GREEK CAPITAL LETTER IOTA = iota adscript
    silent s/\V\C\\u039A/Κ/eg " GREEK CAPITAL LETTER KAPPA
    silent s/\V\C\\u039B/Λ/eg " GREEK CAPITAL LETTER LAMDA
    silent s/\V\C\\u039C/Μ/eg " GREEK CAPITAL LETTER MU
    silent s/\V\C\\u039D/Ν/eg " GREEK CAPITAL LETTER NU
    silent s/\V\C\\u039E/Ξ/eg " GREEK CAPITAL LETTER XI
    silent s/\V\C\\u039F/Ο/eg " GREEK CAPITAL LETTER OMICRON
    silent s/\V\C\\u03A0/Π/eg " GREEK CAPITAL LETTER PI
    silent s/\V\C\\u03A1/Ρ/eg " GREEK CAPITAL LETTER RHO
    silent s/\V\C\\u03A3/Σ/eg " GREEK CAPITAL LETTER SIGMA
    silent s/\V\C\\u03A4/Τ/eg " GREEK CAPITAL LETTER TAU
    silent s/\V\C\\u03A5/Υ/eg " GREEK CAPITAL LETTER UPSILON
    silent s/\V\C\\u03A6/Φ/eg " GREEK CAPITAL LETTER PHI
    silent s/\V\C\\u03A7/Χ/eg " GREEK CAPITAL LETTER CHI
    silent s/\V\C\\u03A8/Ψ/eg " GREEK CAPITAL LETTER PSI
    silent s/\V\C\\u03A9/Ω/eg " GREEK CAPITAL LETTER OMEGA
    silent s/\V\C\\u03B1/α/eg " GREEK SMALL LETTER ALPHA
    silent s/\V\C\\u03B2/β/eg " GREEK SMALL LETTER BETA
    silent s/\V\C\\u03B3/γ/eg " GREEK SMALL LETTER GAMMA
    silent s/\V\C\\u03B4/δ/eg " GREEK SMALL LETTER DELTA
    silent s/\V\C\\u03B5/ε/eg " GREEK SMALL LETTER EPSILON
    silent s/\V\C\\u03B6/ζ/eg " GREEK SMALL LETTER ZETA
    silent s/\V\C\\u03B7/η/eg " GREEK SMALL LETTER ETA
    silent s/\V\C\\u03B8/θ/eg " GREEK SMALL LETTER THETA
    silent s/\V\C\\u03B9/ι/eg " GREEK SMALL LETTER IOTA
    silent s/\V\C\\u03BA/κ/eg " GREEK SMALL LETTER KAPPA
    silent s/\V\C\\u03BB/λ/eg " GREEK SMALL LETTER LAMDA = lambda
    silent s/\V\C\\u03BC/μ/eg " GREEK SMALL LETTER MU
    silent s/\V\C\\u03BD/ν/eg " GREEK SMALL LETTER NU
    silent s/\V\C\\u03BE/ξ/eg " GREEK SMALL LETTER XI
    silent s/\V\C\\u03BF/ο/eg " GREEK SMALL LETTER OMICRON
    silent s/\V\C\\u03C0/π/eg " GREEK SMALL LETTER PI
    silent s/\V\C\\u03C1/ρ/eg " GREEK SMALL LETTER RHO
    silent s/\V\C\\u03C2/ς/eg " GREEK SMALL LETTER FINAL SIGMA = stigma (the Modern Greek name for this letterform)
    silent s/\V\C\\u03C3/σ/eg " GREEK SMALL LETTER SIGMA
    silent s/\V\C\\u03C4/τ/eg " GREEK SMALL LETTER TAU
    silent s/\V\C\\u03C5/υ/eg " GREEK SMALL LETTER UPSILON
    silent s/\V\C\\u03C6/φ/eg " GREEK SMALL LETTER PHI
    silent s/\V\C\\u03C7/χ/eg " GREEK SMALL LETTER CHI
    silent s/\V\C\\u03C8/ψ/eg " GREEK SMALL LETTER PSI
    silent s/\V\C\\u03C9/ω/eg " GREEK SMALL LETTER OMEGA

    " Greek letters
    silent s/\V\C\\u1D26/ᴦ/eg " GREEK LETTER SMALL CAPITAL GAMMA
    silent s/\V\C\\u1D27/ᴧ/eg " GREEK LETTER SMALL CAPITAL LAMDA
    silent s/\V\C\\u1D28/ᴨ/eg " GREEK LETTER SMALL CAPITAL PI
    silent s/\V\C\\u1D29/ᴩ/eg " GREEK LETTER SMALL CAPITAL RHO
    silent s/\V\C\\u1D2A/ᴪ/eg " GREEK LETTER SMALL CAPITAL PSI

    " Dashes
    silent s/\V\C\\u2010/‐/eg " HYPHEN
    silent s/\V\C\\u2011/‑/eg " NON-BREAKING HYPHEN
    silent s/\V\C\\u2012/‒/eg " FIGURE DASH
    silent s/\V\C\\u2013/–/eg " EN DASH
    silent s/\V\C\\u2014/—/eg " EM DASH
    silent s/\V\C\\u2015/―/eg " HORIZONTAL BAR = quotation dash

    " General punctuation
    silent s/\V\C\\u2016/‖/eg " DOUBLE VERTICAL LINE
    silent s/\V\C\\u2017/‗/eg " DOUBLE LOW LINE

    " Quotation marks and apostrophe (Use of quotation marks differs by language. The character names cannot reflect actual usage for all languages.)
    silent s/\V\C\\u2018/‘/eg " LEFT SINGLE QUOTATION MARK = single turned comma quotation mark
    silent s/\V\C\\u2019/’/eg " RIGHT SINGLE QUOTATION MARK = single comma quotation mark
    silent s/\V\C\\u201A/‚/eg " SINGLE LOW-9 QUOTATION MARK = low single comma quotation mark
    silent s/\V\C\\u201B/‛/eg " SINGLE HIGH-REVERSED-9 QUOTATION MARK = single reversed comma quotation mark
    silent s/\V\C\\u201C/“/eg " LEFT DOUBLE QUOTATION MARK = double turned comma quotation mark
    silent s/\V\C\\u201D/”/eg " RIGHT DOUBLE QUOTATION MARK = double comma quotation mark
    silent s/\V\C\\u201E/„/eg " DOUBLE LOW-9 QUOTATION MARK = low double comma quotation mark
    silent s/\V\C\\u201F/‟/eg " DOUBLE HIGH-REVERSED-9 QUOTATION MARK = double reversed comma quotation mark

    " General punctuation
    silent s/\V\C\\u2020/†/eg " DAGGER = obelisk, obelus, long cross
    silent s/\V\C\\u2021/‡/eg " DOUBLE DAGGER = diesis, double obelisk
    silent s/\V\C\\u2022/•/eg " BULLET = black small circle
    silent s/\V\C\\u2023/‣/eg " TRIANGULAR BULLET
    silent s/\V\C\\u2024/․/eg " ONE DOT LEADER
    silent s/\V\C\\u2025/‥/eg " TWO DOT LEADER
    silent s/\V\C\\u2026/…/eg " HORIZONTAL ELLIPSIS = three dot leader
    silent s/\V\C\\u2027/‧/eg " HYPHENATION POINT
    silent s/\V\C\\u2030/‰/eg " PER MILLE SIGN = permille, per thousand
    silent s/\V\C\\u2031/‱/eg " PER TEN THOUSAND SIGN = permyriad
    silent s/\V\C\\u2032/′/eg " PRIME = minutes, feet
    silent s/\V\C\\u2033/″/eg " DOUBLE PRIME = seconds, inches
    silent s/\V\C\\u2034/eg " TRIPLE PRIME = lines (old measure, 1/‴/12 of an inch)
    silent s/\V\C\\u2035/‵/eg " REVERSED PRIME
    silent s/\V\C\\u2036/‶/eg " REVERSED DOUBLE PRIME
    silent s/\V\C\\u2037/‷/eg " REVERSED TRIPLE PRIME
    silent s/\V\C\\u2038/‸/eg " CARET

    " Quotation marks
    silent s/\V\C\\u2039/‹/eg " SINGLE LEFT-POINTING ANGLE QUOTATION MARK = left pointing single guillemet
    silent s/\V\C\\u203A/›/eg " SINGLE RIGHT-POINTING ANGLE QUOTATION MARK = right pointing single guillemet

    " General punctuation
    silent s/\V\C\\u203B/※/eg " REFERENCE MARK = Japanese kome = Urdu paragraph separator

    " Double punctuation for vertical text
    silent s/\V\C\\u203C/‼/eg " DOUBLE EXCLAMATION MARK

    " General punctuation
    silent s/\V\C\\u203D/‽/eg " INTERROBANG
    silent s/\V\C\\u203E/‾/eg " OVERLINE = spacing overscore
    silent s/\V\C\\u203F/‿/eg " UNDERTIE = Greek enotikon
    silent s/\V\C\\u2040/⁀/eg " CHARACTER TIE = z notation sequence concatenation
    silent s/\V\C\\u2041/⁁/eg " CARET INSERTION POINT
    silent s/\V\C\\u2042/⁂/eg " ASTERISM
    silent s/\V\C\\u2043/⁃/eg " HYPHEN BULLET
    silent s/\V\C\\u2044/⁄/eg " FRACTION SLASH = solidus (in typography)
    silent s/\V\C\\u2045/⁅/eg " LEFT SQUARE BRACKET WITH QUILL
    silent s/\V\C\\u2046/⁆/eg " RIGHT SQUARE BRACKET WITH QUILL

    " Double punctuation for vertical text
    silent s/\V\C\\u2047/⁇/eg " DOUBLE QUESTION MARK
    silent s/\V\C\\u2048/⁈/eg " QUESTION EXCLAMATION MARK
    silent s/\V\C\\u2049/⁉/eg " EXCLAMATION QUESTION MARK

    " General punctuation
    silent s/\V\C\\u204A/⁊/eg " TIRONIAN SIGN ET
    silent s/\V\C\\u204B/⁋/eg " REVERSED PILCROW SIGN
    silent s/\V\C\\u204C/⁌/eg " BLACK LEFTWARDS BULLET
    silent s/\V\C\\u204D/⁍/eg " BLACK RIGHTWARDS BULLET
    silent s/\V\C\\u204E/⁎/eg " LOW ASTERISK
    silent s/\V\C\\u204F/⁏/eg " REVERSED SEMICOLON
    silent s/\V\C\\u2050/⁐/eg " CLOSE UP
    silent s/\V\C\\u2051/⁑/eg " TWO ASTERISKS ALIGNED VERTICALLY
    silent s/\V\C\\u2052/⁒/eg " COMMERCIAL MINUS SIGN = abzüglich
    silent s/\V\C\\u2053/⁓/eg " SWUNG DASH
    silent s/\V\C\\u2054/⁔/eg " INVERTED UNDERTIE
    silent s/\V\C\\u2055/⁕/eg " FLOWER PUNCTUATION MARK = phul, puspika
    silent s/\V\C\\u2057/⁗/eg " QUADRUPLE PRIME

    " Superscripts (See also superscript Latin letters in the Spacing Modifier Letters block starting at 02B0.)
    silent s/\V\C\\u2070/⁰/eg " SUPERSCRIPT ZERO
    silent s/\V\C\\u2071/ⁱ/eg " SUPERSCRIPT LATIN SMALL LETTER I
    silent s/\V\C\\u2074/⁴/eg " SUPERSCRIPT FOUR
    silent s/\V\C\\u2075/⁵/eg " SUPERSCRIPT FIVE
    silent s/\V\C\\u2076/⁶/eg " SUPERSCRIPT SIX
    silent s/\V\C\\u2077/⁷/eg " SUPERSCRIPT SEVEN
    silent s/\V\C\\u2078/⁸/eg " SUPERSCRIPT EIGHT
    silent s/\V\C\\u2079/⁹/eg " SUPERSCRIPT NINE
    silent s/\V\C\\u207A/⁺/eg " SUPERSCRIPT PLUS SIGN
    silent s/\V\C\\u207B/⁻/eg " SUPERSCRIPT MINUS
    silent s/\V\C\\u207C/⁼/eg " SUPERSCRIPT EQUALS SIGN
    silent s/\V\C\\u207D/⁽/eg " SUPERSCRIPT LEFT PARENTHESIS
    silent s/\V\C\\u207E/⁾/eg " SUPERSCRIPT RIGHT PARENTHESIS
    silent s/\V\C\\u207F/ⁿ/eg " SUPERSCRIPT LATIN SMALL LETTER N

    " Subscripts
    silent s/\V\C\\u2080/₀/eg " SUBSCRIPT ZERO
    silent s/\V\C\\u2081/₁/eg " SUBSCRIPT ONE
    silent s/\V\C\\u2082/₂/eg " SUBSCRIPT TWO
    silent s/\V\C\\u2083/₃/eg " SUBSCRIPT THREE
    silent s/\V\C\\u2084/₄/eg " SUBSCRIPT FOUR
    silent s/\V\C\\u2085/₅/eg " SUBSCRIPT FIVE
    silent s/\V\C\\u2086/₆/eg " SUBSCRIPT SIX
    silent s/\V\C\\u2087/₇/eg " SUBSCRIPT SEVEN
    silent s/\V\C\\u2088/₈/eg " SUBSCRIPT EIGHT
    silent s/\V\C\\u2089/₉/eg " SUBSCRIPT NINE
    silent s/\V\C\\u208A/₊/eg " SUBSCRIPT PLUS SIGN
    silent s/\V\C\\u208B/₋/eg " SUBSCRIPT MINUS
    silent s/\V\C\\u208C/₌/eg " SUBSCRIPT EQUALS SIGN
    silent s/\V\C\\u208D/₍/eg " SUBSCRIPT LEFT PARENTHESIS
    silent s/\V\C\\u208E/₎/eg " SUBSCRIPT RIGHT PARENTHESIS
endf
