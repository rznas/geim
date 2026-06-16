<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Canvas-sortingOrder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Canvas' order within a sorting layer.

When comparing canvases in the same sorting layer, the one with a higher sorting order is displayed above the one with a lower sorting order. **Note**: Internally the value is stored as a signed 16-bit integer (short) and is constrained within the range of `-32,768` to `32,767`. See Renderer.
