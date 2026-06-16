<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.DirtyTextureRegion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| textureName | The name of the Terrain texture. |
| region | The rectangular region to mark as dirty. |
| allowDelayedCPUSync | Specifies whether to allow delayed CPU synchronization of the texture. |

### Description

Marks the specified part of the Terrain texture as dirty.

Use this function only after you manually change the GPU part of the Terrain texture, such as by using Graphics.CopyTexture. Set the `allowDelayedCPUSync` parameter to `true` if you want Unity to perform immediate synchronization of the CPU part. If you set it to `false`, Unity queues the reading back of the dirty region until the next call to SyncTexture.

If the current active RenderTexture contains your changes, and you want to copy a part of it into the Terrain texture, use CopyActiveRenderTextureToTexture instead.
