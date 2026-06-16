<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.GatherNormals.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gathers the normal information into `sourceRenderTexture`.

This function collects the terrain mesh normalmap data from all Terrain tiles in the PaintContext into `sourceRenderTexture`.

 This function is called internally by TerrainPaintUtility.CollectNormals.

 Important: There is no corresponding ScatterNormals function, because the normals are not stored, but calculated from the heightmap.

 Additional resources: PaintContext, PaintContext.GatherHeightmap
