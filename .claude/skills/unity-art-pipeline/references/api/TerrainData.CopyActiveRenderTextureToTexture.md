<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainData.CopyActiveRenderTextureToTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| textureName | The name of the Terrain texture to copy into. |
| textureIndex | The index of the Terrain texture to copy into. |
| sourceRect | The part of the active Render Texture to copy. |
| dest | The X and Y coordinates of the Terrain texture to copy into. |
| allowDelayedCPUSync | Specifies whether to allow delayed CPU synchronization of the texture. |

### Description

Copies the specified part of the active RenderTexture to the Terrain texture.

If the `allowDelayedCPUSync` parameter is set to `true`, and the platform supports copying between a RenderTexture and a Texture2D, Unity performs a GPU copy from the active RenderTexture to the Terrain texture. This is sufficient for Terrain rendering, but you will need to call SyncTexture afterward to synchronize the CPU part of the texture.

If the `allowDelayedCPUSync` parameter is set to `false`, or the platform doesn't support copying between textures, Unity immediately reads back the content of the active RenderTexture, and updates both the CPU and GPU parts of the Terrain texture.

Unity recommends you create the source Render Texture to copy in the format that Terrain.heightmapRenderTextureFormat specifies, and call the HLSL function `PackHeightmap` before you write to the source render texture. To use `PackHeightmap`, make sure you have the include directive `#include "UnityCG.cginc"` in your shader.

Additional resources: DirtyTextureRegion, SyncTexture.
