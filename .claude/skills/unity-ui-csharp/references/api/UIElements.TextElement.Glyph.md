<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TextElement.Glyph.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Encapsulates a single glyph rendered inside a TextElement mesh. A glyph is a quad made of four vertices, laid out clockwise: bottom‑left → top‑left → top‑right → bottom‑right

Each Vertex stores:

- Position – 3‑D coordinates
- Color – per‑vertex tint
- UV0 (x,y) – location of the glyph in the atlas texture
- UV2.x – index of the texture slice inside a texture‑atlas array
- UV2.y – SDF scale (negative values indicate bold weight)

### Properties

| Property | Description |
| --- | --- |
| vertices | Four vertices that describe the glyph’s quad in BL‑TL‑TR‑BR order. |
