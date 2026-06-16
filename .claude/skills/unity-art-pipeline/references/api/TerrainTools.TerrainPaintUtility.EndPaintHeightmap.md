<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.EndPaintHeightmap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ctx | The heightmap paint context to complete. |
| editorUndoName | Unique name used for the undo stack. |

### Description

Helper function to complete a heightmap modification.

Once the modified data is written to PaintContext.destinationRenderTexture, call this function to copy the modifications back to the original Terrain tiles. This function also signals Unity to update the dirty regions in each of the affected heightmaps, to update collision and physics. This function will also release all allocated resources in the PaintContext.

 See TerrainPaintUtility.BeginPaintHeightmap, PaintContext, and PaintContext.ScatterHeightmap.
