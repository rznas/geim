<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.ScatterAlphamap.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| editorUndoName | Unique name used for the undo stack. |

### Description

Applies an edited alphamap PaintContext by copying modifications back to the source Terrain tiles.

Once the edits to a PaintContext are complete, the modified data in `destinationRenderTexture` must be applied to the textures stored in each Terrain. ScatterAlphamap will perform this copy, and re-normalize the other alphamap channels to maintain a sum of 1. This function will also create a delayed action to rebuild the basemap LOD texture.

 This function is called internally by TerrainPaintUtility.EndPaintTexture.

 Additional resources: PaintContext.GatherAlphamap and PaintContext.ApplyDelayedActions.
