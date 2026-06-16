<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.LowLevel.GlyphPackingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The modes available when packing glyphs into an atlas texture.

### Properties

| Property | Description |
| --- | --- |
| BestShortSideFit | Place the glyph against the short side of a free space to minimize the length of the shorter leftover side. |
| BestLongSideFit | Place the glyph against the longer side of a free space to minimize the length of the longer leftover side. |
| BestAreaFit | Place the glyph into the smallest free space available in which it can fit. |
| BottomLeftRule | Place the glyph into available free space in a Tetris like fashion. |
| ContactPointRule | Place the glyph into the available free space by trying to maximize the contact point between it and other glyphs. |
