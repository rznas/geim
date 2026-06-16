<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.PaintContext.Cleanup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| restoreRenderTexture | When true, indicates that this function restores RenderTexture.active |

### Description

Releases the allocated resources of this PaintContext.

This function releases the `sourceRenderTexture` and `destinationRenderTexture`. When restoreRenderTexture is true, it also restores RenderTexture.active to the value saved as _oldRenderTexture. This function is called internally by TerrainPaintUtility.EndPaintHeightmap, TerrainPaintUtility.EndPaintTexture and TerrainPaintUtility.ReleaseContextResources.
