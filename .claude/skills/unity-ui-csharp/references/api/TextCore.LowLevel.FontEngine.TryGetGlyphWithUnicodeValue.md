<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.LowLevel.FontEngine.TryGetGlyphWithUnicodeValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| flags | The glyph loading flag that should be used to load the glyph. |
| glyph | The glyph using the provided index or the .notdef glyph (index 0) if no glyph was found at that index. |
| unicode | The Unicode value of the character whose glyph should be loaded. |

### Returns

**bool** Returns true if a glyph exists for the given unicode value. Otherwise returns false.

### Description

Try loading a glyph for the given unicode value. If available, populates the glyph and returns true. Otherwise returns false and populates the glyph with the .notdef / missing glyph data.
