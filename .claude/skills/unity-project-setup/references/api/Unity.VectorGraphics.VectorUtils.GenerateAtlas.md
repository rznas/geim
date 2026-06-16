<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.GenerateAtlas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| geoms | The list of Geometry objects, probably created with TessellateNodeHierarchy |
| rasterSize | Maximum size of the generated texture |
| generatePOTTexture | Resize the texture to the next power-of-two |
| encodeSettings | Encode the gradient settings inside the texture |
| linear | If true, the texture will be created in linear colorspace |

### Returns

**TextureAtlas** The generated texture atlas

### Description

Generates a Texture2D atlas containing the textures and gradients for the vector geometry.
