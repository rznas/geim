<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.UnloadLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| index | Index of the Scene in the PlayerSettings to unload. |
| scenePath | Name of the Scene to Unload. |

### Returns

**bool** Returns true, if the Scene is unloaded.

### Description

Unloads all GameObject associated with the given Scene. Assets are currently not unloaded to free up asset memory call `Resources.UnloadAllUnusedAssets`.
