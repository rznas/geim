<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainCallbacks.TextureChangedCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | The Terrain object that references a changed TerrainData asset. |
| textureName | The name of the texture that changed. |
| texelRegion | The region of the Terrain texture that changed, in texel coordinates. |
| synched | Indicates whether the changes were fully synchronized back to CPU memory. |

### Description

Use this delegate type with textureChanged to monitor all the changes to Terrain textures.
