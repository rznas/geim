<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.LowLevel.GlyphLoadFlags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The various options (flags) used by the FontEngine when loading glyphs from a font face.

### Properties

| Property | Description |
| --- | --- |
| LOAD_DEFAULT | Load glyph metrics and bitmap representation if available for the current face size. |
| LOAD_NO_SCALE | Load glyphs at default font units without scaling. This flag implies LOAD_NO_HINTING and LOAD_NO_BITMAP and unsets LOAD_RENDER. |
| LOAD_NO_HINTING | Load glyphs without hinting. |
| LOAD_RENDER | Load glyph metrics and render outline using 8-bit or antialiased image of the glyph. |
| LOAD_NO_BITMAP | Load glyphs and ignore embedded bitmap strikes. |
| LOAD_FORCE_AUTOHINT | Load glyphs using the auto hinter instead of the font's native hinter. |
| LOAD_MONOCHROME | Load glyph metrics and render outline using 1-bit monochrome. |
| LOAD_NO_AUTOHINT | Load glyphs using the font's native hinter. |
| LOAD_COLOR | Load glyph metrics and render using color bitmaps. |
| LOAD_COMPUTE_METRICS | Load glyph metrics without using the 'hdmx' table. This flag is mostly used to validate font data. |
| LOAD_BITMAP_METRICS_ONLY | Load glyph metrics without allocating and loading the bitmap data. |
