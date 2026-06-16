<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.SetupTerrainToolMaterialProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| paintContext | PaintContext describing the area we are editing, and the terrain space. |
| brushXform | BrushTransform from terrain space to Brush UVs. |
| material | Material to populate with transform properties. |

### Description

Sets up all of the material properties used by functions in TerrainTool.cginc.

TerrainTool.cginc contains useful transforms for terrain tool shader; this function fills out the material properties necessary for those transforms to work properly.
