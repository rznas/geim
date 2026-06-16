<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VersionControl.Asset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This class containes information about the version control state of an asset.

### Properties

| Property | Description |
| --- | --- |
| assetPath | Gets the path of the Asset relative to the project root. If the Asset is a meta file, the path to the meta file is returned. |
| fullName | Gets the full name of the asset including extension. |
| isFolder | Returns true if the asset is a folder. |
| isInCurrentProject | Returns true if the asset file exists and is in the current project. |
| isMeta | Returns true if the instance of the Asset class actually refers to a .meta file. |
| locked | Returns true if the asset is locked by the version control system. |
| metaPath | Gets the path of the meta file for this Asset relative to the project root. If the Asset is a meta file, the path to the meta file is returned. |
| name | Get the name of the asset. |
| path | Gets the path of the asset. |
| readOnly | Returns true is the asset is read only. |
| state | Gets the version control state of the asset. |

### Public Methods

| Method | Description |
| --- | --- |
| Edit | Opens the assets in an associated editor. |
| IsOneOfStates | Returns true if the version control state of the assets is one of the input states. |
| IsState | Returns true if the version control state of the asset exactly matches the input state. |
| Load | Loads the asset to memory. |
