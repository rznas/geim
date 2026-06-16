<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.BuildSprite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| geoms | The list of tessellated Geometry instances |
| svgPixelsPerUnit | How many SVG "pixels" map into a Unity unit |
| alignment | The position of the sprite origin |
| customPivot | If alignment is Alignment.Custom, customPivot is used to compute the sprite origin |
| gradientResolution | The maximum size of the texture holding gradient data |
| flipYAxis | True to have the positive Y axis to go downward. |

### Returns

**Sprite** A new Sprite containing the provided geometry. The Sprite may have a texture if the geometry has any texture and/or gradients

### Description

Builds a sprite asset from a scene tessellation.

### Parameters

| Parameter | Description |
| --- | --- |
| geoms | The list of tessellated Geometry instances |
| rect | The position and size of the sprite geometry |
| svgPixelsPerUnit | How many SVG "pixels" map into a Unity unit |
| alignment | The position of the sprite origin |
| customPivot | If alignment is Alignment.Custom, customPivot is used to compute the sprite origin |
| gradientResolution | The maximum size of the texture holding gradient data |
| flipYAxis | True to have the positive Y axis to go downward. |

### Returns

**Sprite** A new Sprite containing the provided geometry. The Sprite may have a texture if the geometry has any texture and/or gradients

### Description

Builds a sprite asset from a scene tessellation.
