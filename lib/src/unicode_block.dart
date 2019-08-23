class Block {
  /// The [start] is the first code point in the range for this block and [end]
  /// is the last. The [name] is the Unicode block name. A full description can
  /// be found here: https://en.wikipedia.org/wiki/Unicode_block
  Block(this.start, this.end, this.name);

  final int start;
  final int end;
  final String name;
}

class UnicodeBlock {
  /// The [Block] contains the start and end code points in the range for the
  /// Unicode block as well as the name. More information about the block names
  /// can be found here: https://en.wikipedia.org/wiki/Unicode_block
  static final List<Block> blocks = [
    Block(0x0000, 0x007F, 'Basic Latin'),
    Block(0x0080, 0x00FF, 'Latin-1 Supplement'),
    Block(0x0100, 0x017F, 'Latin Extended-A'),
    Block(0x0180, 0x024F, 'Latin Extended-B'),
    Block(0x0250, 0x02AF, 'IPA Extensions'),
    Block(0x02B0, 0x02FF, 'Spacing Modifier Letters'),
    Block(0x0300, 0x036F, 'Combining Diacritical Marks'),
    Block(0x0370, 0x03FF, 'Greek and Coptic'),
    Block(0x0400, 0x04FF, 'Cyrillic'),
    Block(0x0500, 0x052F, 'Cyrillic Supplement'),
    Block(0x0530, 0x058F, 'Armenian'),
    Block(0x0590, 0x05FF, 'Hebrew'),
    Block(0x0600, 0x06FF, 'Arabic'),
    Block(0x0700, 0x074F, 'Syriac'),
    Block(0x0750, 0x077F, 'Arabic Supplement'),
    Block(0x0780, 0x07BF, 'Thaana'),
    Block(0x07C0, 0x07FF, 'NKo'),
    Block(0x0800, 0x083F, 'Samaritan'),
    Block(0x0840, 0x085F, 'Mandaic'),
    Block(0x0860, 0x086F, 'Syriac Supplement'),
    Block(0x08A0, 0x08FF, 'Arabic Extended-A'),
    Block(0x0900, 0x097F, 'Devanagari'),
    Block(0x0980, 0x09FF, 'Bengali'),
    Block(0x0A00, 0x0A7F, 'Gurmukhi'),
    Block(0x0A80, 0x0AFF, 'Gujarati'),
    Block(0x0B00, 0x0B7F, 'Oriya'),
    Block(0x0B80, 0x0BFF, 'Tamil'),
    Block(0x0C00, 0x0C7F, 'Telugu'),
    Block(0x0C80, 0x0CFF, 'Kannada'),
    Block(0x0D00, 0x0D7F, 'Malayalam'),
    Block(0x0D80, 0x0DFF, 'Sinhala'),
    Block(0x0E00, 0x0E7F, 'Thai'),
    Block(0x0E80, 0x0EFF, 'Lao'),
    Block(0x0F00, 0x0FFF, 'Tibetan'),
    Block(0x1000, 0x109F, 'Myanmar'),
    Block(0x10A0, 0x10FF, 'Georgian'),
    Block(0x1100, 0x11FF, 'Hangul Jamo'),
    Block(0x1200, 0x137F, 'Ethiopic'),
    Block(0x1380, 0x139F, 'Ethiopic Supplement'),
    Block(0x13A0, 0x13FF, 'Cherokee'),
    Block(0x1400, 0x167F, 'Unified Canadian Aboriginal Syllabics'),
    Block(0x1680, 0x169F, 'Ogham'),
    Block(0x16A0, 0x16FF, 'Runic'),
    Block(0x1700, 0x171F, 'Tagalog'),
    Block(0x1720, 0x173F, 'Hanunoo'),
    Block(0x1740, 0x175F, 'Buhid'),
    Block(0x1760, 0x177F, 'Tagbanwa'),
    Block(0x1780, 0x17FF, 'Khmer'),
    Block(0x1800, 0x18AF, 'Mongolian'),
    Block(0x18B0, 0x18FF, 'Unified Canadian Aboriginal Syllabics Extended'),
    Block(0x1900, 0x194F, 'Limbu'),
    Block(0x1950, 0x197F, 'Tai Le'),
    Block(0x1980, 0x19DF, 'New Tai Lue'),
    Block(0x19E0, 0x19FF, 'Khmer Symbols'),
    Block(0x1A00, 0x1A1F, 'Buginese'),
    Block(0x1A20, 0x1AAF, 'Tai Tham'),
    Block(0x1AB0, 0x1AFF, 'Combining Diacritical Marks Extended'),
    Block(0x1B00, 0x1B7F, 'Balinese'),
    Block(0x1B80, 0x1BBF, 'Sundanese'),
    Block(0x1BC0, 0x1BFF, 'Batak'),
    Block(0x1C00, 0x1C4F, 'Lepcha'),
    Block(0x1C50, 0x1C7F, 'Ol Chiki'),
    Block(0x1C80, 0x1C8F, 'Cyrillic Extended-C'),
    Block(0x1C90, 0x1CBF, 'Georgian Extended'),
    Block(0x1CC0, 0x1CCF, 'Sundanese Supplement'),
    Block(0x1CD0, 0x1CFF, 'Vedic Extensions'),
    Block(0x1D00, 0x1D7F, 'Phonetic Extensions'),
    Block(0x1D80, 0x1DBF, 'Phonetic Extensions Supplement'),
    Block(0x1DC0, 0x1DFF, 'Combining Diacritical Marks Supplement'),
    Block(0x1E00, 0x1EFF, 'Latin Extended Additional'),
    Block(0x1F00, 0x1FFF, 'Greek Extended'),
    Block(0x2000, 0x206F, 'General Punctuation'),
    Block(0x2070, 0x209F, 'Superscripts and Subscripts'),
    Block(0x20A0, 0x20CF, 'Currency Symbols'),
    Block(0x20D0, 0x20FF, 'Combining Diacritical Marks for Symbols'),
    Block(0x2100, 0x214F, 'Letterlike Symbols'),
    Block(0x2150, 0x218F, 'Number Forms'),
    Block(0x2190, 0x21FF, 'Arrows'),
    Block(0x2200, 0x22FF, 'Mathematical Operators'),
    Block(0x2300, 0x23FF, 'Miscellaneous Technical'),
    Block(0x2400, 0x243F, 'Control Pictures'),
    Block(0x2440, 0x245F, 'Optical Character Recognition'),
    Block(0x2460, 0x24FF, 'Enclosed Alphanumerics'),
    Block(0x2500, 0x257F, 'Box Drawing'),
    Block(0x2580, 0x259F, 'Block Elements'),
    Block(0x25A0, 0x25FF, 'Geometric Shapes'),
    Block(0x2600, 0x26FF, 'Miscellaneous Symbols'),
    Block(0x2700, 0x27BF, 'Dingbats'),
    Block(0x27C0, 0x27EF, 'Miscellaneous Mathematical Symbols-A'),
    Block(0x27F0, 0x27FF, 'Supplemental Arrows-A'),
    Block(0x2800, 0x28FF, 'Braille Patterns'),
    Block(0x2900, 0x297F, 'Supplemental Arrows-B'),
    Block(0x2980, 0x29FF, 'Miscellaneous Mathematical Symbols-B'),
    Block(0x2A00, 0x2AFF, 'Supplemental Mathematical Operators'),
    Block(0x2B00, 0x2BFF, 'Miscellaneous Symbols and Arrows'),
    Block(0x2C00, 0x2C5F, 'Glagolitic'),
    Block(0x2C60, 0x2C7F, 'Latin Extended-C'),
    Block(0x2C80, 0x2CFF, 'Coptic'),
    Block(0x2D00, 0x2D2F, 'Georgian Supplement'),
    Block(0x2D30, 0x2D7F, 'Tifinagh'),
    Block(0x2D80, 0x2DDF, 'Ethiopic Extended'),
    Block(0x2DE0, 0x2DFF, 'Cyrillic Extended-A'),
    Block(0x2E00, 0x2E7F, 'Supplemental Punctuation'),
    Block(0x2E80, 0x2EFF, 'CJK Radicals Supplement'),
    Block(0x2F00, 0x2FDF, 'Kangxi Radicals'),
    Block(0x2FF0, 0x2FFF, 'Ideographic Description Characters'),
    Block(0x3000, 0x303F, 'CJK Symbols and Punctuation'),
    Block(0x3040, 0x309F, 'Hiragana'),
    Block(0x30A0, 0x30FF, 'Katakana'),
    Block(0x3100, 0x312F, 'Bopomofo'),
    Block(0x3130, 0x318F, 'Hangul Compatibility Jamo'),
    Block(0x3190, 0x319F, 'Kanbun'),
    Block(0x31A0, 0x31BF, 'Bopomofo Extended'),
    Block(0x31C0, 0x31EF, 'CJK Strokes'),
    Block(0x31F0, 0x31FF, 'Katakana Phonetic Extensions'),
    Block(0x3200, 0x32FF, 'Enclosed CJK Letters and Months'),
    Block(0x3300, 0x33FF, 'CJK Compatibility'),
    Block(0x3400, 0x4DBF, 'CJK Unified Ideographs Extension A'),
    Block(0x4DC0, 0x4DFF, 'Yijing Hexagram Symbols'),
    Block(0x4E00, 0x9FFF, 'CJK Unified Ideographs'),
    Block(0xA000, 0xA48F, 'Yi Syllables'),
    Block(0xA490, 0xA4CF, 'Yi Radicals'),
    Block(0xA4D0, 0xA4FF, 'Lisu'),
    Block(0xA500, 0xA63F, 'Vai'),
    Block(0xA640, 0xA69F, 'Cyrillic Extended-B'),
    Block(0xA6A0, 0xA6FF, 'Bamum'),
    Block(0xA700, 0xA71F, 'Modifier Tone Letters'),
    Block(0xA720, 0xA7FF, 'Latin Extended-D'),
    Block(0xA800, 0xA82F, 'Syloti Nagri'),
    Block(0xA830, 0xA83F, 'Common Indic Number Forms'),
    Block(0xA840, 0xA87F, 'Phags-pa'),
    Block(0xA880, 0xA8DF, 'Saurashtra'),
    Block(0xA8E0, 0xA8FF, 'Devanagari Extended'),
    Block(0xA900, 0xA92F, 'Kayah Li'),
    Block(0xA930, 0xA95F, 'Rejang'),
    Block(0xA960, 0xA97F, 'Hangul Jamo Extended-A'),
    Block(0xA980, 0xA9DF, 'Javanese'),
    Block(0xA9E0, 0xA9FF, 'Myanmar Extended-B'),
    Block(0xAA00, 0xAA5F, 'Cham'),
    Block(0xAA60, 0xAA7F, 'Myanmar Extended-A'),
    Block(0xAA80, 0xAADF, 'Tai Viet'),
    Block(0xAAE0, 0xAAFF, 'Meetei Mayek Extensions'),
    Block(0xAB00, 0xAB2F, 'Ethiopic Extended-A'),
    Block(0xAB30, 0xAB6F, 'Latin Extended-E'),
    Block(0xAB70, 0xABBF, 'Cherokee Supplement'),
    Block(0xABC0, 0xABFF, 'Meetei Mayek'),
    Block(0xAC00, 0xD7AF, 'Hangul Syllables'),
    Block(0xD7B0, 0xD7FF, 'Hangul Jamo Extended-B'),
    Block(0xD800, 0xDB7F, 'High Surrogates'),
    Block(0xDB80, 0xDBFF, 'High Private Use Surrogates'),
    Block(0xDC00, 0xDFFF, 'Low Surrogates'),
    Block(0xE000, 0xF8FF, 'Private Use Area'),
    Block(0xF900, 0xFAFF, 'CJK Compatibility Ideographs'),
    Block(0xFB00, 0xFB4F, 'Alphabetic Presentation Forms'),
    Block(0xFB50, 0xFDFF, 'Arabic Presentation Forms-A'),
    Block(0xFE00, 0xFE0F, 'Variation Selectors'),
    Block(0xFE10, 0xFE1F, 'Vertical Forms'),
    Block(0xFE20, 0xFE2F, 'Combining Half Marks'),
    Block(0xFE30, 0xFE4F, 'CJK Compatibility Forms'),
    Block(0xFE50, 0xFE6F, 'Small Form Variants'),
    Block(0xFE70, 0xFEFF, 'Arabic Presentation Forms-B'),
    Block(0xFF00, 0xFFEF, 'Halfwidth and Fullwidth Forms'),
    Block(0xFFF0, 0xFFFF, 'Specials'),
    Block(0x10000, 0x1007F, 'Linear B Syllabary'),
    Block(0x10080, 0x100FF, 'Linear B Ideograms'),
    Block(0x10100, 0x1013F, 'Aegean Numbers'),
    Block(0x10140, 0x1018F, 'Ancient Greek Numbers'),
    Block(0x10190, 0x101CF, 'Ancient Symbols'),
    Block(0x101D0, 0x101FF, 'Phaistos Disc'),
    Block(0x10280, 0x1029F, 'Lycian'),
    Block(0x102A0, 0x102DF, 'Carian'),
    Block(0x102E0, 0x102FF, 'Coptic Epact Numbers'),
    Block(0x10300, 0x1032F, 'Old Italic'),
    Block(0x10330, 0x1034F, 'Gothic'),
    Block(0x10350, 0x1037F, 'Old Permic'),
    Block(0x10380, 0x1039F, 'Ugaritic'),
    Block(0x103A0, 0x103DF, 'Old Persian'),
    Block(0x10400, 0x1044F, 'Deseret'),
    Block(0x10450, 0x1047F, 'Shavian'),
    Block(0x10480, 0x104AF, 'Osmanya'),
    Block(0x104B0, 0x104FF, 'Osage'),
    Block(0x10500, 0x1052F, 'Elbasan'),
    Block(0x10530, 0x1056F, 'Caucasian Albanian'),
    Block(0x10600, 0x1077F, 'Linear A'),
    Block(0x10800, 0x1083F, 'Cypriot Syllabary'),
    Block(0x10840, 0x1085F, 'Imperial Aramaic'),
    Block(0x10860, 0x1087F, 'Palmyrene'),
    Block(0x10880, 0x108AF, 'Nabataean'),
    Block(0x108E0, 0x108FF, 'Hatran'),
    Block(0x10900, 0x1091F, 'Phoenician'),
    Block(0x10920, 0x1093F, 'Lydian'),
    Block(0x10980, 0x1099F, 'Meroitic Hieroglyphs'),
    Block(0x109A0, 0x109FF, 'Meroitic Cursive'),
    Block(0x10A00, 0x10A5F, 'Kharoshthi'),
    Block(0x10A60, 0x10A7F, 'Old South Arabian'),
    Block(0x10A80, 0x10A9F, 'Old North Arabian'),
    Block(0x10AC0, 0x10AFF, 'Manichaean'),
    Block(0x10B00, 0x10B3F, 'Avestan'),
    Block(0x10B40, 0x10B5F, 'Inscriptional Parthian'),
    Block(0x10B60, 0x10B7F, 'Inscriptional Pahlavi'),
    Block(0x10B80, 0x10BAF, 'Psalter Pahlavi'),
    Block(0x10C00, 0x10C4F, 'Old Turkic'),
    Block(0x10C80, 0x10CFF, 'Old Hungarian'),
    Block(0x10D00, 0x10D3F, 'Hanifi Rohingya'),
    Block(0x10E60, 0x10E7F, 'Rumi Numeral Symbols'),
    Block(0x10F00, 0x10F2F, 'Old Sogdian'),
    Block(0x10F30, 0x10F6F, 'Sogdian'),
    Block(0x10FE0, 0x10FFF, 'Elymaic'),
    Block(0x11000, 0x1107F, 'Brahmi'),
    Block(0x11080, 0x110CF, 'Kaithi'),
    Block(0x110D0, 0x110FF, 'Sora Sompeng'),
    Block(0x11100, 0x1114F, 'Chakma'),
    Block(0x11150, 0x1117F, 'Mahajani'),
    Block(0x11180, 0x111DF, 'Sharada'),
    Block(0x111E0, 0x111FF, 'Sinhala Archaic Numbers'),
    Block(0x11200, 0x1124F, 'Khojki'),
    Block(0x11280, 0x112AF, 'Multani'),
    Block(0x112B0, 0x112FF, 'Khudawadi'),
    Block(0x11300, 0x1137F, 'Grantha'),
    Block(0x11400, 0x1147F, 'Newa'),
    Block(0x11480, 0x114DF, 'Tirhuta'),
    Block(0x11580, 0x115FF, 'Siddham'),
    Block(0x11600, 0x1165F, 'Modi'),
    Block(0x11660, 0x1167F, 'Mongolian Supplement'),
    Block(0x11680, 0x116CF, 'Takri'),
    Block(0x11700, 0x1173F, 'Ahom'),
    Block(0x11800, 0x1184F, 'Dogra'),
    Block(0x118A0, 0x118FF, 'Warang Citi'),
    Block(0x119A0, 0x119FF, 'Nandinagari'),
    Block(0x11A00, 0x11A4F, 'Zanabazar Square'),
    Block(0x11A50, 0x11AAF, 'Soyombo'),
    Block(0x11AC0, 0x11AFF, 'Pau Cin Hau'),
    Block(0x11C00, 0x11C6F, 'Bhaiksuki'),
    Block(0x11C70, 0x11CBF, 'Marchen'),
    Block(0x11D00, 0x11D5F, 'Masaram Gondi'),
    Block(0x11D60, 0x11DAF, 'Gunjala Gondi'),
    Block(0x11EE0, 0x11EFF, 'Makasar'),
    Block(0x11FC0, 0x11FFF, 'Tamil Supplement'),
    Block(0x12000, 0x123FF, 'Cuneiform'),
    Block(0x12400, 0x1247F, 'Cuneiform Numbers and Punctuation'),
    Block(0x12480, 0x1254F, 'Early Dynastic Cuneiform'),
    Block(0x13000, 0x1342F, 'Egyptian Hieroglyphs'),
    Block(0x13430, 0x1343F, 'Egyptian Hieroglyph Format Controls'),
    Block(0x14400, 0x1467F, 'Anatolian Hieroglyphs'),
    Block(0x16800, 0x16A3F, 'Bamum Supplement'),
    Block(0x16A40, 0x16A6F, 'Mro'),
    Block(0x16AD0, 0x16AFF, 'Bassa Vah'),
    Block(0x16B00, 0x16B8F, 'Pahawh Hmong'),
    Block(0x16E40, 0x16E9F, 'Medefaidrin'),
    Block(0x16F00, 0x16F9F, 'Miao'),
    Block(0x16FE0, 0x16FFF, 'Ideographic Symbols and Punctuation'),
    Block(0x17000, 0x187FF, 'Tangut'),
    Block(0x18800, 0x18AFF, 'Tangut Components'),
    Block(0x1B000, 0x1B0FF, 'Kana Supplement'),
    Block(0x1B100, 0x1B12F, 'Kana Extended-A'),
    Block(0x1B130, 0x1B16F, 'Small Kana Extension'),
    Block(0x1B170, 0x1B2FF, 'Nushu'),
    Block(0x1BC00, 0x1BC9F, 'Duployan'),
    Block(0x1BCA0, 0x1BCAF, 'Shorthand Format Controls'),
    Block(0x1D000, 0x1D0FF, 'Byzantine Musical Symbols'),
    Block(0x1D100, 0x1D1FF, 'Musical Symbols'),
    Block(0x1D200, 0x1D24F, 'Ancient Greek Musical Notation'),
    Block(0x1D2E0, 0x1D2FF, 'Mayan Numerals'),
    Block(0x1D300, 0x1D35F, 'Tai Xuan Jing Symbols'),
    Block(0x1D360, 0x1D37F, 'Counting Rod Numerals'),
    Block(0x1D400, 0x1D7FF, 'Mathematical Alphanumeric Symbols'),
    Block(0x1D800, 0x1DAAF, 'Sutton SignWriting'),
    Block(0x1E000, 0x1E02F, 'Glagolitic Supplement'),
    Block(0x1E100, 0x1E14F, 'Nyiakeng Puachue Hmong'),
    Block(0x1E2C0, 0x1E2FF, 'Wancho'),
    Block(0x1E800, 0x1E8DF, 'Mende Kikakui'),
    Block(0x1E900, 0x1E95F, 'Adlam'),
    Block(0x1EC70, 0x1ECBF, 'Indic Siyaq Numbers'),
    Block(0x1ED00, 0x1ED4F, 'Ottoman Siyaq Numbers'),
    Block(0x1EE00, 0x1EEFF, 'Arabic Mathematical Alphabetic Symbols'),
    Block(0x1F000, 0x1F02F, 'Mahjong Tiles'),
    Block(0x1F030, 0x1F09F, 'Domino Tiles'),
    Block(0x1F0A0, 0x1F0FF, 'Playing Cards'),
    Block(0x1F100, 0x1F1FF, 'Enclosed Alphanumeric Supplement'),
    Block(0x1F200, 0x1F2FF, 'Enclosed Ideographic Supplement'),
    Block(0x1F300, 0x1F5FF, 'Miscellaneous Symbols and Pictographs'),
    Block(0x1F600, 0x1F64F, 'Emoticons'),
    Block(0x1F650, 0x1F67F, 'Ornamental Dingbats'),
    Block(0x1F680, 0x1F6FF, 'Transport and Map Symbols'),
    Block(0x1F700, 0x1F77F, 'Alchemical Symbols'),
    Block(0x1F780, 0x1F7FF, 'Geometric Shapes Extended'),
    Block(0x1F800, 0x1F8FF, 'Supplemental Arrows-C'),
    Block(0x1F900, 0x1F9FF, 'Supplemental Symbols and Pictographs'),
    Block(0x1FA00, 0x1FA6F, 'Chess Symbols'),
    Block(0x1FA70, 0x1FAFF, 'Symbols and Pictographs Extended-A'),
    Block(0x20000, 0x2A6DF, 'CJK Unified Ideographs Extension B'),
    Block(0x2A700, 0x2B73F, 'CJK Unified Ideographs Extension C'),
    Block(0x2B740, 0x2B81F, 'CJK Unified Ideographs Extension D'),
    Block(0x2B820, 0x2CEAF, 'CJK Unified Ideographs Extension E'),
    Block(0x2CEB0, 0x2EBEF, 'CJK Unified Ideographs Extension F'),
    Block(0x2F800, 0x2FA1F, 'CJK Compatibility Ideographs Supplement'),
    Block(0xE0000, 0xE007F, 'Tags'),
    Block(0xE0100, 0xE01EF, 'Variation Selectors Supplement'),
    Block(0xF0000, 0xFFFFF, 'Supplementary Private Use Area-A'),
    Block(0x100000, 0x10FFFF, 'Supplementary Private Use Area-B'),
  ];
}
