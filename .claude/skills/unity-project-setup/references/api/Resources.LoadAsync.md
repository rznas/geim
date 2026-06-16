<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Resources.LoadAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Pathname of the target folder. If you use an empty string, Unity loads the first object of the type specified that it finds in the Resources folder. |
| systemTypeInstance | Type filter for objects returned. |

### Description

Asynchronously loads an asset stored at `path` in a Resources folder.

Returns a ResourceRequest, from which the asset can be retrieved once the loading operation is completed. Only objects of type will be returned if this parameter is supplied. The path is relative to any Resources folder inside the Assets folder of your project, extensions must be omitted.

**Note:** All asset names and paths in Unity use forward slashes. Paths using backslashes will **not** work.

### Parameters

| Parameter | Description |
| --- | --- |
| path | Pathname of the target folder. If you use an empty string, Unity loads the first object of the type specified that it finds in the Resources folder. |

### Description

Asynchronously loads an asset stored at `path` in a Resources folder.

Returns a ResourceRequest, from which the asset can be retrieved once the loading operation is completed. Only objects of type `T` will be returned. The `path` is relative to any Resources folder inside the Assets folder of your project, extensions must be omitted.

**Note:** All asset names and paths in Unity use forward slashes. Paths using backslashes will **not** work.
