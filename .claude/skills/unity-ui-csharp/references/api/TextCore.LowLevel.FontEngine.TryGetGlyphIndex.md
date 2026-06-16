<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.LowLevel.FontEngine.TryGetGlyphIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| unicode | The unicode value of the character for which to lookup the glyph index. |
| glyphIndex | The index of the glyph for the given unicode character or the .notdef glyph (index 0) if no glyph is available for the given Unicode value. |

### Returns

**bool** Returns true if the given unicode has a glyph index.

### Description

Try to get the glyph index for the character at the given Unicode value.
