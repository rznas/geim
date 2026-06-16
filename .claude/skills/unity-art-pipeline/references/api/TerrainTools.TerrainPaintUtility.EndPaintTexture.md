<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.EndPaintTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ctx | The texture paint context to complete. |
| editorUndoName | Unique name used for the undo stack. |

### Description

Helper function to complete a texture alphamap modification.

Once the modified data is written to PaintContext.destinationRenderTexture, call this function to copy the modifications back to the original Terrain tiles. This function also signals Unity to recalculate the basemap. This function will also release all allocated resources in the PaintContext.

 Additional resources: TerrainPaintUtility.BeginPaintTexture, PaintContext, and PaintContext.ScatterAlphamap.
