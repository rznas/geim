<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.BuildVectorImage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| geoms | The list of tessellated Geometry instances |
| gradientResolution | The maximum size of the texture holding gradient data |

### Returns

**VectorImage** A new VectorImage containing the provided geometry. The VectorImage may have a texture if the geometry has any texture and/or gradients

### Description

Builds a sprite asset from a scene tessellation.

It is the caller's responsibility to destroy the returned VectorImage using UnityEngine.Object.Destroy.

### Parameters

| Parameter | Description |
| --- | --- |
| sceneInfo | The SVGParser.SceneInfo to build the VectorImage from. |

### Returns

**VectorImage** A VectorImage constructed from the vector scene definition.

### Description

Builds an antialiased VectorImage from a vector scene definition.
