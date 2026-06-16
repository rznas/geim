<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtilityEditor.DrawBrushPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| heightmapPC | PaintContext describing the heightmap from which to build the preview mesh. |
| previewTexture | Specifies Whether to build the mesh using the source or destination render texture in heightmapPC. |
| brushTexture | The brush texture to preview. |
| brushXform | Describes the position and orientation of the brush. |
| proceduralMaterial | Material used to render the preview. |
| materialPassIndex | Material pass to render. |

### Description

Draws a Terrain brush preview mesh from a heightmap PaintContext using the provided procedural material.

The heightmapPC is used to build the mesh. To ensure that the preview is rendered on the mesh, the heightmapPC must contain an area around the brush. To facilitate proper transformation of brush UV space, this method sets up the brush transforms in the material. Important: The material provided must support procedural mesh generation in the vertex shader using the shader functions provided in TerrainPreview.cginc. A default implementation of the material is provided by GetDefaultBrushPreviewMaterial().

 Additional resources: TerrainPaintUtilityEditor.GetDefaultBrushPreviewMaterial and PaintContext.
