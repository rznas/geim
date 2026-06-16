<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/StaticOcclusionCulling.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

StaticOcclusionCulling lets you perform static occlusion culling operations.

### Static Properties

| Property | Description |
| --- | --- |
| doesSceneHaveManualPortals | Does the Scene contain any occlusion portals that were added manually rather than automatically? |
| isRunning | Used to check if asynchronous generation of static occlusion culling data is still running. |
| umbraDataSize | Returns the size in bytes that the PVS data is currently taking up in this Scene on disk. |

### Static Methods

| Method | Description |
| --- | --- |
| Cancel | Used to cancel asynchronous generation of static occlusion culling data. |
| Clear | Clears the PVS of the opened Scene. |
| Compute | Used to generate static occlusion culling data. |
| GenerateInBackground | Used to compute static occlusion culling data asynchronously. |
| RemoveCacheFolder | Removes temporary folder used when baking occlusion. |
