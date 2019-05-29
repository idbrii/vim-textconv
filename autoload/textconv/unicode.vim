" Partial list from https://gist.github.com/ivandrofly/0fe20773bd712b303f78

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

    " Letters
    silent s/\V\CÀ/\\u00C0/eg " LATIN CAPITAL LETTER A WITH GRAVE
    silent s/\V\CÁ/\\u00C1/eg " LATIN CAPITAL LETTER A WITH ACUTE
    silent s/\V\CÂ/\\u00C2/eg " LATIN CAPITAL LETTER A WITH CIRCUMFLEX
    silent s/\V\CÃ/\\u00C3/eg " LATIN CAPITAL LETTER A WITH TILDE
    silent s/\V\CÄ/\\u00C4/eg " LATIN CAPITAL LETTER A WITH DIAERESIS
    silent s/\V\CÅ/\\u00C5/eg " LATIN CAPITAL LETTER A WITH RING ABOVE
    silent s/\V\CÆ/\\u00C6/eg " LATIN CAPITAL LETTER AE = latin capital ligature ae
    silent s/\V\CÇ/\\u00C7/eg " LATIN CAPITAL LETTER C WITH CEDILLA
    silent s/\V\CÈ/\\u00C8/eg " LATIN CAPITAL LETTER E WITH GRAVE
    silent s/\V\CÉ/\\u00C9/eg " LATIN CAPITAL LETTER E WITH ACUTE
    silent s/\V\CÊ/\\u00CA/eg " LATIN CAPITAL LETTER E WITH CIRCUMFLEX
    silent s/\V\CË/\\u00CB/eg " LATIN CAPITAL LETTER E WITH DIAERESIS
    silent s/\V\CÌ/\\u00CC/eg " LATIN CAPITAL LETTER I WITH GRAVE
    silent s/\V\CÍ/\\u00CD/eg " LATIN CAPITAL LETTER I WITH ACUTE
    silent s/\V\CÎ/\\u00CE/eg " LATIN CAPITAL LETTER I WITH CIRCUMFLEX
    silent s/\V\CÏ/\\u00CF/eg " LATIN CAPITAL LETTER I WITH DIAERESIS
    silent s/\V\CÐ/\\u00D0/eg " LATIN CAPITAL LETTER ETH
    silent s/\V\CÑ/\\u00D1/eg " LATIN CAPITAL LETTER N WITH TILDE
    silent s/\V\CÒ/\\u00D2/eg " LATIN CAPITAL LETTER O WITH GRAVE
    silent s/\V\CÓ/\\u00D3/eg " LATIN CAPITAL LETTER O WITH ACUTE
    silent s/\V\CÔ/\\u00D4/eg " LATIN CAPITAL LETTER O WITH CIRCUMFLEX
    silent s/\V\CÕ/\\u00D5/eg " LATIN CAPITAL LETTER O WITH TILDE
    silent s/\V\CÖ/\\u00D6/eg " LATIN CAPITAL LETTER O WITH DIAERESIS

    " Mathematical operator
    silent s/\V\C×/\\u00D7/eg " MULTIPLICATION SIGN = z notation Cartesian product

    " Letters
    silent s/\V\CØ/\\u00D8/eg " LATIN CAPITAL LETTER O WITH STROKE = o slash
    silent s/\V\CÙ/\\u00D9/eg " LATIN CAPITAL LETTER U WITH GRAVE
    silent s/\V\CÚ/\\u00DA/eg " LATIN CAPITAL LETTER U WITH ACUTE
    silent s/\V\CÛ/\\u00DB/eg " LATIN CAPITAL LETTER U WITH CIRCUMFLEX
    silent s/\V\CÜ/\\u00DC/eg " LATIN CAPITAL LETTER U WITH DIAERESIS
    silent s/\V\CÝ/\\u00DD/eg " LATIN CAPITAL LETTER Y WITH ACUTE
    silent s/\V\CÞ/\\u00DE/eg " LATIN CAPITAL LETTER THORN
    silent s/\V\Cß/\\u00DF/eg " LATIN SMALL LETTER SHARP S = Eszett
    silent s/\V\Cà/\\u00E0/eg " LATIN SMALL LETTER A WITH GRAVE
    silent s/\V\Cá/\\u00E1/eg " LATIN SMALL LETTER A WITH ACUTE
    silent s/\V\Câ/\\u00E2/eg " LATIN SMALL LETTER A WITH CIRCUMFLEX
    silent s/\V\Cã/\\u00E3/eg " LATIN SMALL LETTER A WITH TILDE
    silent s/\V\Cä/\\u00E4/eg " LATIN SMALL LETTER A WITH DIAERESIS
    silent s/\V\Cå/\\u00E5/eg " LATIN SMALL LETTER A WITH RING ABOVE
    silent s/\V\Cæ/\\u00E6/eg " LATIN SMALL LETTER AE = latin small ligature ae = ash (from Old English æsc)
    silent s/\V\Cç/\\u00E7/eg " LATIN SMALL LETTER C WITH CEDILLA
    silent s/\V\Cè/\\u00E8/eg " LATIN SMALL LETTER E WITH GRAVE
    silent s/\V\Cé/\\u00E9/eg " LATIN SMALL LETTER E WITH ACUTE
    silent s/\V\Cê/\\u00EA/eg " LATIN SMALL LETTER E WITH CIRCUMFLEX
    silent s/\V\Cë/\\u00EB/eg " LATIN SMALL LETTER E WITH DIAERESIS
    silent s/\V\Cì/\\u00EC/eg " LATIN SMALL LETTER I WITH GRAVE
    silent s/\V\Cí/\\u00ED/eg " LATIN SMALL LETTER I WITH ACUTE
    silent s/\V\Cî/\\u00EE/eg " LATIN SMALL LETTER I WITH CIRCUMFLEX
    silent s/\V\Cï/\\u00EF/eg " LATIN SMALL LETTER I WITH DIAERESIS
    silent s/\V\Cð/\\u00F0/eg " LATIN SMALL LETTER ETH
    silent s/\V\Cñ/\\u00F1/eg " LATIN SMALL LETTER N WITH TILDE
    silent s/\V\Cò/\\u00F2/eg " LATIN SMALL LETTER O WITH GRAVE
    silent s/\V\Có/\\u00F3/eg " LATIN SMALL LETTER O WITH ACUTE
    silent s/\V\Cô/\\u00F4/eg " LATIN SMALL LETTER O WITH CIRCUMFLEX
    silent s/\V\Cõ/\\u00F5/eg " LATIN SMALL LETTER O WITH TILDE
    silent s/\V\Cö/\\u00F6/eg " LATIN SMALL LETTER O WITH DIAERESIS

    " Mathematical operator
    silent s/\V\C÷/\\u00F7/eg " DIVISION SIGN

    " Letters
    silent s/\V\Cø/\\u00F8/eg " LATIN SMALL LETTER O WITH STROKE = o slash
    silent s/\V\Cù/\\u00F9/eg " LATIN SMALL LETTER U WITH GRAVE
    silent s/\V\Cú/\\u00FA/eg " LATIN SMALL LETTER U WITH ACUTE
    silent s/\V\Cû/\\u00FB/eg " LATIN SMALL LETTER U WITH CIRCUMFLEX
    silent s/\V\Cü/\\u00FC/eg " LATIN SMALL LETTER U WITH DIAERESIS
    silent s/\V\Cý/\\u00FD/eg " LATIN SMALL LETTER Y WITH ACUTE
    silent s/\V\Cþ/\\u00FE/eg " LATIN SMALL LETTER THORN
    silent s/\V\Cÿ/\\u00FF/eg " LATIN SMALL LETTER Y WITH DIAERESIS

    " European Latin 
    silent s/\V\CŊ/\\u014A/eg " LATIN CAPITAL LETTER ENG
    silent s/\V\Cŋ/\\u014B/eg " LATIN SMALL LETTER ENG = engma, angma
    silent s/\V\CŌ/\\u014C/eg " LATIN CAPITAL LETTER O WITH MACRON
    silent s/\V\Cō/\\u014D/eg " LATIN SMALL LETTER O WITH MACRON
    silent s/\V\CŎ/\\u014E/eg " LATIN CAPITAL LETTER O WITH BREVE
    silent s/\V\Cŏ/\\u014F/eg " LATIN SMALL LETTER O WITH BREVE
    silent s/\V\CŐ/\\u0150/eg " LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
    silent s/\V\Cő/\\u0151/eg " LATIN SMALL LETTER O WITH DOUBLE ACUTE
    silent s/\V\CŒ/\\u0152/eg " LATIN CAPITAL LIGATURE OE
    silent s/\V\Cœ/\\u0153/eg " LATIN SMALL LIGATURE OE = ethel (from Old English)
    silent s/\V\CŔ/\\u0154/eg " LATIN CAPITAL LETTER R WITH ACUTE
    silent s/\V\Cŕ/\\u0155/eg " LATIN SMALL LETTER R WITH ACUTE
    silent s/\V\CŖ/\\u0156/eg " LATIN CAPITAL LETTER R WITH CEDILLA
    silent s/\V\Cŗ/\\u0157/eg " LATIN SMALL LETTER R WITH CEDILLA
    silent s/\V\CŘ/\\u0158/eg " LATIN CAPITAL LETTER R WITH CARON
    silent s/\V\Cř/\\u0159/eg " LATIN SMALL LETTER R WITH CARON

    silent s/\V\CŚ/\\u015A/eg " LATIN CAPITAL LETTER S WITH ACUTE
    silent s/\V\Cś/\\u015B/eg " LATIN SMALL LETTER S WITH ACUTE
    silent s/\V\CŜ/\\u015C/eg " LATIN CAPITAL LETTER S WITH CIRCUMFLEX
    silent s/\V\Cŝ/\\u015D/eg " LATIN SMALL LETTER S WITH CIRCUMFLEX
    silent s/\V\CŞ/\\u015E/eg " LATIN CAPITAL LETTER S WITH CEDILLA
    silent s/\V\Cş/\\u015F/eg " LATIN SMALL LETTER S WITH CEDILLA
    silent s/\V\CŠ/\\u0160/eg " LATIN CAPITAL LETTER S WITH CARON
    silent s/\V\Cš/\\u0161/eg " LATIN SMALL LETTER S WITH CARON

    silent s/\V\CŢ/\\u0162/eg " LATIN CAPITAL LETTER T WITH CEDILLA
    silent s/\V\Cţ/\\u0163/eg " LATIN SMALL LETTER T WITH CEDILLA
    silent s/\V\CŤ/\\u0164/eg " LATIN CAPITAL LETTER T WITH CARON
    silent s/\V\Cť/\\u0165/eg " LATIN SMALL LETTER T WITH CARON
    silent s/\V\CŦ/\\u0166/eg " LATIN CAPITAL LETTER T WITH STROKE
    silent s/\V\Cŧ/\\u0167/eg " LATIN SMALL LETTER T WITH STROKE
    silent s/\V\CŨ/\\u0168/eg " LATIN CAPITAL LETTER U WITH TILDE
    silent s/\V\Cũ/\\u0169/eg " LATIN SMALL LETTER U WITH TILDE
    silent s/\V\CŪ/\\u016A/eg " LATIN CAPITAL LETTER U WITH MACRON
    silent s/\V\Cū/\\u016B/eg " LATIN SMALL LETTER U WITH MACRON
    silent s/\V\CŬ/\\u016C/eg " LATIN CAPITAL LETTER U WITH BREVE
    silent s/\V\Cŭ/\\u016D/eg " LATIN SMALL LETTER U WITH BREVE
    silent s/\V\CŮ/\\u016E/eg " LATIN CAPITAL LETTER U WITH RING ABOVE
    silent s/\V\Ců/\\u016F/eg " LATIN SMALL LETTER U WITH RING ABOVE

    silent s/\V\CŰ/\\u0170/eg " LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
    silent s/\V\Cű/\\u0171/eg " LATIN SMALL LETTER U WITH DOUBLE ACUTE
    silent s/\V\CŴ/\\u0174/eg " LATIN CAPITAL LETTER W WITH CIRCUMFLEX
    silent s/\V\Cŵ/\\u0175/eg " LATIN SMALL LETTER W WITH CIRCUMFLEX
    silent s/\V\CŶ/\\u0176/eg " LATIN CAPITAL LETTER Y WITH CIRCUMFLEX
    silent s/\V\Cŷ/\\u0177/eg " LATIN SMALL LETTER Y WITH CIRCUMFLEX
    silent s/\V\CŸ/\\u0178/eg " LATIN CAPITAL LETTER Y WITH DIAERESIS
    silent s/\V\CŹ/\\u0179/eg " LATIN CAPITAL LETTER Z WITH ACUTE
    silent s/\V\Cź/\\u017A/eg " LATIN SMALL LETTER Z WITH ACUTE
    silent s/\V\CŻ/\\u017B/eg " LATIN CAPITAL LETTER Z WITH DOT ABOVE
    silent s/\V\Cż/\\u017C/eg " LATIN SMALL LETTER Z WITH DOT ABOVE
    silent s/\V\CŽ/\\u017D/eg " LATIN CAPITAL LETTER Z WITH CARON
    silent s/\V\Cž/\\u017E/eg " LATIN SMALL LETTER Z WITH CARON
    silent s/\V\Cſ/\\u017F/eg " LATIN SMALL LETTER LONG S

    " Non-European and historic Latin
    silent s/\V\CƆ/\\u0186/eg " LATIN CAPITAL LETTER OPEN O
    silent s/\V\CƎ/\\u018E/eg " LATIN CAPITAL LETTER REVERSED E = turned e
    silent s/\V\CƜ/\\u019C/eg " LATIN CAPITAL LETTER TURNED M

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.)
    silent s/\V\Cɐ/\\u0250/eg " LATIN SMALL LETTER TURNED A
    silent s/\V\Cɑ/\\u0251/eg " LATIN SMALL LETTER ALPHA = latin small letter script a
    silent s/\V\Cɒ/\\u0252/eg " LATIN SMALL LETTER TURNED ALPHA
    silent s/\V\Cɔ/\\u0254/eg " LATIN SMALL LETTER OPEN O
    silent s/\V\Cɘ/\\u0258/eg " LATIN SMALL LETTER REVERSED E
    silent s/\V\Cə/\\u0259/eg " LATIN SMALL LETTER SCHWA
    silent s/\V\Cɛ/\\u025B/eg " LATIN SMALL LETTER OPEN E = epsilon
    silent s/\V\Cɜ/\\u025C/eg " LATIN SMALL LETTER REVERSED OPEN E
    silent s/\V\Cɞ/\\u025E/eg " LATIN SMALL LETTER CLOSED REVERSED OPEN E = closed reversed epsilon
    silent s/\V\Cɟ/\\u025F/eg " LATIN SMALL LETTER DOTLESS J WITH STROKE
    silent s/\V\Cɡ/\\u0261/eg " LATIN SMALL LETTER SCRIPT G
    silent s/\V\Cɢ/\\u0262/eg " LATIN LETTER SMALL CAPITAL G
    silent s/\V\Cɣ/\\u0263/eg " LATIN SMALL LETTER GAMMA
    silent s/\V\Cɤ/\\u0264/eg " LATIN SMALL LETTER RAMS HORN = latin small letter baby gamma
    silent s/\V\Cɥ/\\u0265/eg " LATIN SMALL LETTER TURNED H
    silent s/\V\Cɨ/\\u0268/eg " LATIN SMALL LETTER I WITH STROKE = barred i, i bar

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.) (* ISO 6438 gives lowercase of 0197 as 026A, not 0268) (* obsoleted by IPA in 1989)
    silent s/\V\Cɪ/\\u026A/eg " LATIN LETTER SMALL CAPITAL I
    silent s/\V\Cɬ/\\u026C/eg " LATIN SMALL LETTER L WITH BELT
    silent s/\V\Cɮ/\\u026E/eg " LATIN SMALL LETTER LEZH
    silent s/\V\Cɯ/\\u026F/eg " LATIN SMALL LETTER TURNED M
    silent s/\V\Cɰ/\\u0270/eg " LATIN SMALL LETTER TURNED M WITH LONG LEG
    silent s/\V\Cɴ/\\u0274/eg " LATIN LETTER SMALL CAPITAL N
    silent s/\V\Cɵ/\\u0275/eg " LATIN SMALL LETTER BARRED O = o bar
    silent s/\V\Cɶ/\\u0276/eg " LATIN LETTER SMALL CAPITAL OE
    silent s/\V\Cɷ/\\u0277/eg " LATIN SMALL LETTER CLOSED OMEGA

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.) (* ISO 6438 gives lowercase of 0197 as 026A, not 0268) (* obsoleted by IPA in 1989) (* obsoleted by IPA in 1989)
    silent s/\V\Cɸ/\\u0278/eg " LATIN SMALL LETTER PHI
    silent s/\V\Cɹ/\\u0279/eg " LATIN SMALL LETTER TURNED R

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.) (* ISO 6438 gives lowercase of 0197 as 026A, not 0268) (* obsoleted by IPA in 1989) (* obsoleted by IPA in 1989) (* obsoleted by IPA in 1989)
    silent s/\V\Cʁ/\\u0281/eg " LATIN LETTER SMALL CAPITAL INVERTED R
    silent s/\V\Cʇ/\\u0287/eg " LATIN SMALL LETTER TURNED T
    silent s/\V\Cʌ/\\u028C/eg " LATIN SMALL LETTER TURNED V = caret, wedge
    silent s/\V\Cʍ/\\u028D/eg " LATIN SMALL LETTER TURNED W
    silent s/\V\Cʎ/\\u028E/eg " LATIN SMALL LETTER TURNED Y
    silent s/\V\Cʞ/\\u029E/eg " LATIN SMALL LETTER TURNED K

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

    " Addition for German typography
    silent s/\V\Cẞ/\\u1E9E/eg " LATIN CAPITAL LETTER SHARP S

    " Latin general extensions
    silent s/\V\CỲ/\\u1EF2/eg " LATIN CAPITAL LETTER Y WITH GRAVE
    silent s/\V\Cỳ/\\u1EF3/eg " LATIN SMALL LETTER Y WITH GRAVE
    silent s/\V\CỴ/\\u1EF4/eg " LATIN CAPITAL LETTER Y WITH DOT BELOW
    silent s/\V\Cỵ/\\u1EF5/eg " LATIN SMALL LETTER Y WITH DOT BELOW
    silent s/\V\CỸ/\\u1EF8/eg " LATIN CAPITAL LETTER Y WITH TILDE
    silent s/\V\Cỹ/\\u1EF9/eg " LATIN SMALL LETTER Y WITH TILDE

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

    " Letters
    silent s/\V\C\\u00C0/À/eg " LATIN CAPITAL LETTER A WITH GRAVE
    silent s/\V\C\\u00C1/Á/eg " LATIN CAPITAL LETTER A WITH ACUTE
    silent s/\V\C\\u00C2/Â/eg " LATIN CAPITAL LETTER A WITH CIRCUMFLEX
    silent s/\V\C\\u00C3/Ã/eg " LATIN CAPITAL LETTER A WITH TILDE
    silent s/\V\C\\u00C4/Ä/eg " LATIN CAPITAL LETTER A WITH DIAERESIS
    silent s/\V\C\\u00C5/Å/eg " LATIN CAPITAL LETTER A WITH RING ABOVE
    silent s/\V\C\\u00C6/Æ/eg " LATIN CAPITAL LETTER AE = latin capital ligature ae
    silent s/\V\C\\u00C7/Ç/eg " LATIN CAPITAL LETTER C WITH CEDILLA
    silent s/\V\C\\u00C8/È/eg " LATIN CAPITAL LETTER E WITH GRAVE
    silent s/\V\C\\u00C9/É/eg " LATIN CAPITAL LETTER E WITH ACUTE
    silent s/\V\C\\u00CA/Ê/eg " LATIN CAPITAL LETTER E WITH CIRCUMFLEX
    silent s/\V\C\\u00CB/Ë/eg " LATIN CAPITAL LETTER E WITH DIAERESIS
    silent s/\V\C\\u00CC/Ì/eg " LATIN CAPITAL LETTER I WITH GRAVE
    silent s/\V\C\\u00CD/Í/eg " LATIN CAPITAL LETTER I WITH ACUTE
    silent s/\V\C\\u00CE/Î/eg " LATIN CAPITAL LETTER I WITH CIRCUMFLEX
    silent s/\V\C\\u00CF/Ï/eg " LATIN CAPITAL LETTER I WITH DIAERESIS
    silent s/\V\C\\u00D0/Ð/eg " LATIN CAPITAL LETTER ETH
    silent s/\V\C\\u00D1/Ñ/eg " LATIN CAPITAL LETTER N WITH TILDE
    silent s/\V\C\\u00D2/Ò/eg " LATIN CAPITAL LETTER O WITH GRAVE
    silent s/\V\C\\u00D3/Ó/eg " LATIN CAPITAL LETTER O WITH ACUTE
    silent s/\V\C\\u00D4/Ô/eg " LATIN CAPITAL LETTER O WITH CIRCUMFLEX
    silent s/\V\C\\u00D5/Õ/eg " LATIN CAPITAL LETTER O WITH TILDE
    silent s/\V\C\\u00D6/Ö/eg " LATIN CAPITAL LETTER O WITH DIAERESIS

    " Mathematical operator
    silent s/\V\C\\u00D7/×/eg " MULTIPLICATION SIGN = z notation Cartesian product

    " Letters
    silent s/\V\C\\u00D8/Ø/eg " LATIN CAPITAL LETTER O WITH STROKE = o slash
    silent s/\V\C\\u00D9/Ù/eg " LATIN CAPITAL LETTER U WITH GRAVE
    silent s/\V\C\\u00DA/Ú/eg " LATIN CAPITAL LETTER U WITH ACUTE
    silent s/\V\C\\u00DB/Û/eg " LATIN CAPITAL LETTER U WITH CIRCUMFLEX
    silent s/\V\C\\u00DC/Ü/eg " LATIN CAPITAL LETTER U WITH DIAERESIS
    silent s/\V\C\\u00DD/Ý/eg " LATIN CAPITAL LETTER Y WITH ACUTE
    silent s/\V\C\\u00DE/Þ/eg " LATIN CAPITAL LETTER THORN
    silent s/\V\C\\u00DF/ß/eg " LATIN SMALL LETTER SHARP S = Eszett
    silent s/\V\C\\u00E0/à/eg " LATIN SMALL LETTER A WITH GRAVE
    silent s/\V\C\\u00E1/á/eg " LATIN SMALL LETTER A WITH ACUTE
    silent s/\V\C\\u00E2/â/eg " LATIN SMALL LETTER A WITH CIRCUMFLEX
    silent s/\V\C\\u00E3/ã/eg " LATIN SMALL LETTER A WITH TILDE
    silent s/\V\C\\u00E4/ä/eg " LATIN SMALL LETTER A WITH DIAERESIS
    silent s/\V\C\\u00E5/å/eg " LATIN SMALL LETTER A WITH RING ABOVE
    silent s/\V\C\\u00E6/æ/eg " LATIN SMALL LETTER AE = latin small ligature ae = ash (from Old English æsc)
    silent s/\V\C\\u00E7/ç/eg " LATIN SMALL LETTER C WITH CEDILLA
    silent s/\V\C\\u00E8/è/eg " LATIN SMALL LETTER E WITH GRAVE
    silent s/\V\C\\u00E9/é/eg " LATIN SMALL LETTER E WITH ACUTE
    silent s/\V\C\\u00EA/ê/eg " LATIN SMALL LETTER E WITH CIRCUMFLEX
    silent s/\V\C\\u00EB/ë/eg " LATIN SMALL LETTER E WITH DIAERESIS
    silent s/\V\C\\u00EC/ì/eg " LATIN SMALL LETTER I WITH GRAVE
    silent s/\V\C\\u00ED/í/eg " LATIN SMALL LETTER I WITH ACUTE
    silent s/\V\C\\u00EE/î/eg " LATIN SMALL LETTER I WITH CIRCUMFLEX
    silent s/\V\C\\u00EF/ï/eg " LATIN SMALL LETTER I WITH DIAERESIS
    silent s/\V\C\\u00F0/ð/eg " LATIN SMALL LETTER ETH
    silent s/\V\C\\u00F1/ñ/eg " LATIN SMALL LETTER N WITH TILDE
    silent s/\V\C\\u00F2/ò/eg " LATIN SMALL LETTER O WITH GRAVE
    silent s/\V\C\\u00F3/ó/eg " LATIN SMALL LETTER O WITH ACUTE
    silent s/\V\C\\u00F4/ô/eg " LATIN SMALL LETTER O WITH CIRCUMFLEX
    silent s/\V\C\\u00F5/õ/eg " LATIN SMALL LETTER O WITH TILDE
    silent s/\V\C\\u00F6/ö/eg " LATIN SMALL LETTER O WITH DIAERESIS

    " Mathematical operator
    silent s/\V\C\\u00F7/÷/eg " DIVISION SIGN

    " Letters
    silent s/\V\C\\u00F8/ø/eg " LATIN SMALL LETTER O WITH STROKE = o slash
    silent s/\V\C\\u00F9/ù/eg " LATIN SMALL LETTER U WITH GRAVE
    silent s/\V\C\\u00FA/ú/eg " LATIN SMALL LETTER U WITH ACUTE
    silent s/\V\C\\u00FB/û/eg " LATIN SMALL LETTER U WITH CIRCUMFLEX
    silent s/\V\C\\u00FC/ü/eg " LATIN SMALL LETTER U WITH DIAERESIS
    silent s/\V\C\\u00FD/ý/eg " LATIN SMALL LETTER Y WITH ACUTE
    silent s/\V\C\\u00FE/þ/eg " LATIN SMALL LETTER THORN
    silent s/\V\C\\u00FF/ÿ/eg " LATIN SMALL LETTER Y WITH DIAERESIS

    " European Latin
    silent s/\V\C\\u014A/Ŋ/eg " LATIN CAPITAL LETTER ENG
    silent s/\V\C\\u014B/ŋ/eg " LATIN SMALL LETTER ENG = engma, angma
    silent s/\V\C\\u014C/Ō/eg " LATIN CAPITAL LETTER O WITH MACRON
    silent s/\V\C\\u014D/ō/eg " LATIN SMALL LETTER O WITH MACRON
    silent s/\V\C\\u014E/Ŏ/eg " LATIN CAPITAL LETTER O WITH BREVE
    silent s/\V\C\\u014F/ŏ/eg " LATIN SMALL LETTER O WITH BREVE
    silent s/\V\C\\u0150/Ő/eg " LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
    silent s/\V\C\\u0151/ő/eg " LATIN SMALL LETTER O WITH DOUBLE ACUTE
    silent s/\V\C\\u0152/Œ/eg " LATIN CAPITAL LIGATURE OE
    silent s/\V\C\\u0153/œ/eg " LATIN SMALL LIGATURE OE = ethel (from Old English)
    silent s/\V\C\\u0154/Ŕ/eg " LATIN CAPITAL LETTER R WITH ACUTE
    silent s/\V\C\\u0155/ŕ/eg " LATIN SMALL LETTER R WITH ACUTE
    silent s/\V\C\\u0156/Ŗ/eg " LATIN CAPITAL LETTER R WITH CEDILLA
    silent s/\V\C\\u0157/ŗ/eg " LATIN SMALL LETTER R WITH CEDILLA
    silent s/\V\C\\u0158/Ř/eg " LATIN CAPITAL LETTER R WITH CARON
    silent s/\V\C\\u0159/ř/eg " LATIN SMALL LETTER R WITH CARON
    silent s/\V\C\\u015A/Ś/eg " LATIN CAPITAL LETTER S WITH ACUTE
    silent s/\V\C\\u015B/ś/eg " LATIN SMALL LETTER S WITH ACUTE
    silent s/\V\C\\u015C/Ŝ/eg " LATIN CAPITAL LETTER S WITH CIRCUMFLEX
    silent s/\V\C\\u015D/ŝ/eg " LATIN SMALL LETTER S WITH CIRCUMFLEX
    silent s/\V\C\\u015E/Ş/eg " LATIN CAPITAL LETTER S WITH CEDILLA
    silent s/\V\C\\u015F/ş/eg " LATIN SMALL LETTER S WITH CEDILLA
    silent s/\V\C\\u0160/Š/eg " LATIN CAPITAL LETTER S WITH CARON
    silent s/\V\C\\u0161/š/eg " LATIN SMALL LETTER S WITH CARON
    silent s/\V\C\\u0162/Ţ/eg " LATIN CAPITAL LETTER T WITH CEDILLA
    silent s/\V\C\\u0163/ţ/eg " LATIN SMALL LETTER T WITH CEDILLA
    silent s/\V\C\\u0164/Ť/eg " LATIN CAPITAL LETTER T WITH CARON
    silent s/\V\C\\u0165/ť/eg " LATIN SMALL LETTER T WITH CARON
    silent s/\V\C\\u0166/Ŧ/eg " LATIN CAPITAL LETTER T WITH STROKE
    silent s/\V\C\\u0167/ŧ/eg " LATIN SMALL LETTER T WITH STROKE
    silent s/\V\C\\u0168/Ũ/eg " LATIN CAPITAL LETTER U WITH TILDE
    silent s/\V\C\\u0169/ũ/eg " LATIN SMALL LETTER U WITH TILDE
    silent s/\V\C\\u016A/Ū/eg " LATIN CAPITAL LETTER U WITH MACRON
    silent s/\V\C\\u016B/ū/eg " LATIN SMALL LETTER U WITH MACRON
    silent s/\V\C\\u016C/Ŭ/eg " LATIN CAPITAL LETTER U WITH BREVE
    silent s/\V\C\\u016D/ŭ/eg " LATIN SMALL LETTER U WITH BREVE
    silent s/\V\C\\u016E/Ů/eg " LATIN CAPITAL LETTER U WITH RING ABOVE
    silent s/\V\C\\u016F/ů/eg " LATIN SMALL LETTER U WITH RING ABOVE
    silent s/\V\C\\u0170/Ű/eg " LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
    silent s/\V\C\\u0171/ű/eg " LATIN SMALL LETTER U WITH DOUBLE ACUTE
    silent s/\V\C\\u0174/Ŵ/eg " LATIN CAPITAL LETTER W WITH CIRCUMFLEX
    silent s/\V\C\\u0175/ŵ/eg " LATIN SMALL LETTER W WITH CIRCUMFLEX
    silent s/\V\C\\u0176/Ŷ/eg " LATIN CAPITAL LETTER Y WITH CIRCUMFLEX
    silent s/\V\C\\u0177/ŷ/eg " LATIN SMALL LETTER Y WITH CIRCUMFLEX
    silent s/\V\C\\u0178/Ÿ/eg " LATIN CAPITAL LETTER Y WITH DIAERESIS
    silent s/\V\C\\u0179/Ź/eg " LATIN CAPITAL LETTER Z WITH ACUTE
    silent s/\V\C\\u017A/ź/eg " LATIN SMALL LETTER Z WITH ACUTE
    silent s/\V\C\\u017B/Ż/eg " LATIN CAPITAL LETTER Z WITH DOT ABOVE
    silent s/\V\C\\u017C/ż/eg " LATIN SMALL LETTER Z WITH DOT ABOVE
    silent s/\V\C\\u017D/Ž/eg " LATIN CAPITAL LETTER Z WITH CARON
    silent s/\V\C\\u017E/ž/eg " LATIN SMALL LETTER Z WITH CARON
    silent s/\V\C\\u017F/ſ/eg " LATIN SMALL LETTER LONG S

    " Non-European and historic Latin
    silent s/\V\C\\u0186/Ɔ/eg " LATIN CAPITAL LETTER OPEN O
    silent s/\V\C\\u018E/Ǝ/eg " LATIN CAPITAL LETTER REVERSED E = turned e
    silent s/\V\C\\u019C/Ɯ/eg " LATIN CAPITAL LETTER TURNED M

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.)
    silent s/\V\C\\u0250/ɐ/eg " LATIN SMALL LETTER TURNED A
    silent s/\V\C\\u0251/ɑ/eg " LATIN SMALL LETTER ALPHA = latin small letter script a
    silent s/\V\C\\u0252/ɒ/eg " LATIN SMALL LETTER TURNED ALPHA
    silent s/\V\C\\u0254/ɔ/eg " LATIN SMALL LETTER OPEN O
    silent s/\V\C\\u0258/ɘ/eg " LATIN SMALL LETTER REVERSED E
    silent s/\V\C\\u0259/ə/eg " LATIN SMALL LETTER SCHWA
    silent s/\V\C\\u025B/ɛ/eg " LATIN SMALL LETTER OPEN E = epsilon
    silent s/\V\C\\u025C/ɜ/eg " LATIN SMALL LETTER REVERSED OPEN E
    silent s/\V\C\\u025E/ɞ/eg " LATIN SMALL LETTER CLOSED REVERSED OPEN E = closed reversed epsilon
    silent s/\V\C\\u025F/ɟ/eg " LATIN SMALL LETTER DOTLESS J WITH STROKE
    silent s/\V\C\\u0261/ɡ/eg " LATIN SMALL LETTER SCRIPT G
    silent s/\V\C\\u0262/ɢ/eg " LATIN LETTER SMALL CAPITAL G
    silent s/\V\C\\u0263/ɣ/eg " LATIN SMALL LETTER GAMMA
    silent s/\V\C\\u0264/ɤ/eg " LATIN SMALL LETTER RAMS HORN = latin small letter baby gamma
    silent s/\V\C\\u0265/ɥ/eg " LATIN SMALL LETTER TURNED H
    silent s/\V\C\\u0268/ɨ/eg " LATIN SMALL LETTER I WITH STROKE = barred i, i bar

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.) (* ISO 6438 gives lowercase of 0197 as 026A, not 0268) (* obsoleted by IPA in 1989)
    silent s/\V\C\\u026A/ɪ/eg " LATIN LETTER SMALL CAPITAL I
    silent s/\V\C\\u026C/ɬ/eg " LATIN SMALL LETTER L WITH BELT
    silent s/\V\C\\u026E/ɮ/eg " LATIN SMALL LETTER LEZH
    silent s/\V\C\\u026F/ɯ/eg " LATIN SMALL LETTER TURNED M
    silent s/\V\C\\u0270/ɰ/eg " LATIN SMALL LETTER TURNED M WITH LONG LEG
    silent s/\V\C\\u0274/ɴ/eg " LATIN LETTER SMALL CAPITAL N
    silent s/\V\C\\u0275/ɵ/eg " LATIN SMALL LETTER BARRED O = o bar
    silent s/\V\C\\u0276/ɶ/eg " LATIN LETTER SMALL CAPITAL OE
    silent s/\V\C\\u0277/ɷ/eg " LATIN SMALL LETTER CLOSED OMEGA

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.) (* ISO 6438 gives lowercase of 0197 as 026A, not 0268) (* obsoleted by IPA in 1989) (* obsoleted by IPA in 1989)
    silent s/\V\C\\u0278/ɸ/eg " LATIN SMALL LETTER PHI
    silent s/\V\C\\u0279/ɹ/eg " LATIN SMALL LETTER TURNED R

    " IPA extensions (IPA includes basic Latin letters and a number of Latin or Greek letters from other blocks.) (* ISO 6438 gives lowercase of 0197 as 026A, not 0268) (* obsoleted by IPA in 1989) (* obsoleted by IPA in 1989) (* obsoleted by IPA in 1989)
    silent s/\V\C\\u0281/ʁ/eg " LATIN LETTER SMALL CAPITAL INVERTED R
    silent s/\V\C\\u0287/ʇ/eg " LATIN SMALL LETTER TURNED T
    silent s/\V\C\\u028C/ʌ/eg " LATIN SMALL LETTER TURNED V = caret, wedge
    silent s/\V\C\\u028D/ʍ/eg " LATIN SMALL LETTER TURNED W
    silent s/\V\C\\u028E/ʎ/eg " LATIN SMALL LETTER TURNED Y
    silent s/\V\C\\u029E/ʞ/eg " LATIN SMALL LETTER TURNED K

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

    " Addition for German typography
    silent s/\V\C\\u1E9E/ẞ/eg " LATIN CAPITAL LETTER SHARP S

    " Latin general extensions
    silent s/\V\C\\u1EF2/Ỳ/eg " LATIN CAPITAL LETTER Y WITH GRAVE
    silent s/\V\C\\u1EF3/ỳ/eg " LATIN SMALL LETTER Y WITH GRAVE
    silent s/\V\C\\u1EF4/Ỵ/eg " LATIN CAPITAL LETTER Y WITH DOT BELOW
    silent s/\V\C\\u1EF5/ỵ/eg " LATIN SMALL LETTER Y WITH DOT BELOW
    silent s/\V\C\\u1EF8/Ỹ/eg " LATIN CAPITAL LETTER Y WITH TILDE
    silent s/\V\C\\u1EF9/ỹ/eg " LATIN SMALL LETTER Y WITH TILDE

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
