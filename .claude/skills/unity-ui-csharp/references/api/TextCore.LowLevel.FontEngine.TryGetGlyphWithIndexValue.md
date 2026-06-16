<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.LowLevel.FontEngine.TryGetGlyphWithIndexValue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| glyphIndex | The index of the glyph that should be loaded. |
| flags | The glyph loading flag that should be used to load the glyph. |
| glyph | The glyph using the provided index or the .notdef glyph (index 0) if no glyph was found at that index. |

### Returns

**bool** Returns true if a glyph exists at the given index. Otherwise returns false.

### Description

Try loading the glyph for the given index value and if available populate the glyph.
