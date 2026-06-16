<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.ScatterHeightmap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| editorUndoName | Unique name used for the undo stack. |

### Description

Applies an edited heightmap PaintContext by copying modifications back to the source Terrain tiles.

Once the edits to a PaintContext are complete, the modified data in `destinationRenderTexture` must be applied to the textures stored in each Terrain. ScatterHeightmap will perform this copy, and mark the modified areas for normal map update next frame. This function will also create a delayed action to rebuild collision, physics, pixel error metrics, visibility bounding boxes, and grass, tree, and detail positions.

 This function is called internally by TerrainPaintUtility.EndPaintHeightmap.

 Additional resources: PaintContext.GatherHeightmap and PaintContext.ApplyDelayedActions.
