<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.TryGetAssetFolderInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | A project relative or absolute path to a file or a folder. |
| rootFolder | This value will be set to true if the given path is a root folder in the AssetDatabase. |
| immutable | This value will be true if the given file or folder can't be modified by the AssetDatabase . |

### Returns

**bool** Returns true if the given path is in a folder managed by the AssetDatabase, false otherwise.

### Description

Get AssetDatabase specific information about a folder.

This method can be used to know whether a path is tracked by the AssetDatabase. Being tracked means that files added to this folder will have a .meta file added along them and be imported and available in the current Unity project. The out arguments can be used to get more information about the given path. - rootFolder is true if the given path is the root of a tracked path on your drive. For example the Assets folder is a root. - immutable is true if the given path is under a root folder registered with the immutable flag. For example files in a package added from the package manager registry will be immutable.
