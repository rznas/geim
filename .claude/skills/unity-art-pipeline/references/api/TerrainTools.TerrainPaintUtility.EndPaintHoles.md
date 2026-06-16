<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintUtility.EndPaintHoles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ctx | The Terrain holes PaintContext to complete. |
| editorUndoName | Unique name used for the undo stack. |

### Description

Helper function to complete a Terrain holes modification.

Once the modified data is written to PaintContext.destinationRenderTexture, call this function to copy the modifications back to the original Terrain tiles. This function also instructs Unity to update the dirty regions of the Terrain holes data in each of the affected Terrain tiles, so as to update collision and physics. This function will also release all allocated resources in the PaintContext.

 See TerrainPaintUtility.BeginPaintHoles, PaintContext, and PaintContext.ScatterHoles.
