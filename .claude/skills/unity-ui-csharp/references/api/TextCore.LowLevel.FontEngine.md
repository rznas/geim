<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.LowLevel.FontEngine.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The FontEngine is used to access data from source font files. This includes information about individual characters, glyphs and relevant metrics typically used in the process of text parsing, layout and rendering.

The types of font files supported are TrueType (.ttf, .ttc) and OpenType (.otf).

The FontEngine is also used to raster the visual representation of characters known as glyphs in a given font atlas texture.

### Static Methods

| Method | Description |
| --- | --- |
| DestroyFontEngine | Destroy and unload resources used by the Font Engine. |
| GetFaceInfo | Get the FaceInfo for the currently loaded and sized typeface. |
| GetFontFaces | Gets the font faces and styles for the currently loaded font. |
| GetSystemFontNames | Gets the family and style names of the system fonts. |
| InitializeFontEngine | Initialize the Font Engine and required resources. |
| LoadFontFace | Load a source font file. |
| SetFaceSize | Set the size of the currently loaded font face. |
| TryGetGlyphIndex | Try to get the glyph index for the character at the given Unicode value. |
| TryGetGlyphWithIndexValue | Try loading the glyph for the given index value and if available populate the glyph. |
| TryGetGlyphWithUnicodeValue | Try loading a glyph for the given unicode value. If available, populates the glyph and returns true. Otherwise returns false and populates the glyph with the .notdef / missing glyph data. |
| UnloadAllFontFaces | Unloads all currently loaded font faces and removes them from the cache. |
| UnloadFontFace | Unloads current font face and removes it from the cache. |
