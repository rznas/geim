<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.GenerateAtlasAndFillUVs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| geoms | The list of Geometry objects, probably created with TessellateNodeHierarchy |
| rasterSize | Maximum size of the generated texture |

### Returns

**TextureAtlas** The generated texture atlas

### Description

Generates a Texture2D atlas containing the textures and gradients for the vector geometry, and fill the UVs of the geometry.
