<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainCallbacks.HeightmapChangedCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| terrain | The Terrain object that references a changed TerrainData asset. |
| heightRegion | The heightmap region that changed, in samples. |
| synched | Indicates whether the changes were fully synchronized back to CPU memory. |

### Description

Use this delegate type with heightmapChanged to monitor all changes to the Terrain heightmap.
