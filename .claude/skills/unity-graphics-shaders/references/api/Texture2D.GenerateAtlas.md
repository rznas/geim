<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture2D.GenerateAtlas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sizes | An array of rectangle dimensions. |
| padding | Amount of padding to insert between adjacent rectangles in the atlas. |
| atlasSize | The size of the atlas. |
| results | If the function succeeds, Unity populates this with the packed rectangles. |

### Returns

**bool** Returns `true` if the function succeeds. Otherwise, returns `false`.

### Description

Packs a set of rectangles into a square atlas, with optional padding between rectangles.

Additional resources: PackTextures.
