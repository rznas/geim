<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.RenderSpriteToTexture2D.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| sprite | The sprite to render |
| width | The desired width of the resulting texture |
| height | The desired height of the resulting texture |
| mat | The material used to render the sprite |
| antiAliasing | The number of samples per pixel for anti-aliasing |
| expandEdges | When true, expand the edges to avoid a dark banding effect caused by filtering. This is slower to render and uses more graphics memory. |

### Returns

**Texture2D** A Texture2D object containing the rendered vector sprite

### Description

Renders a vector sprite to Texture2D.
