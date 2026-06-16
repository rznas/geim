<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainCallbacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This static class provides events that Unity triggers when Terrain data changes.

### Events

| Event | Description |
| --- | --- |
| heightmapChanged | This event is triggered after there are changes to Terrain height data. |
| textureChanged | This event is triggered after there are changes to Terrain textures. |

### Delegates

| Delegate | Description |
| --- | --- |
| HeightmapChangedCallback | Use this delegate type with heightmapChanged to monitor all changes to the Terrain heightmap. |
| TextureChangedCallback | Use this delegate type with textureChanged to monitor all the changes to Terrain textures. |
