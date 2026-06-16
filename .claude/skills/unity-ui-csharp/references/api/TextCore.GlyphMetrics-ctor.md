<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextCore.GlyphMetrics-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| width | The width of the glyph. |
| height | The height of the glyph. |
| bearingX | The horizontal bearingX. |
| bearingY | The horizontal bearingY. |
| advance | The horizontal advance. |

### Description

Constructs a new GlyphMetrics structure.

The horizontal bearingX represents the distance from the current drawing position (origin) relative to the element's left bounding box edge (bbox).

The horizontal bearingY represents the distance from the current drawing position (origin) relative to the element's top bounding box edge (bbox). This represents the top of the text element.

The horizontal advance represents the distance to increase (left to right) or decrease (right to left) the drawing position relative to the origin of the text element. This represents the origin of the next text element.
