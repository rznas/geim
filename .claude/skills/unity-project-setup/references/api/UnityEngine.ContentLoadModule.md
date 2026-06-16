<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UnityEngine.ContentLoadModule.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ContentLoad module implements the ContentLoadInterface class and related APIs to load data from ContentFiles.

### Classes

| Class | Description |
| --- | --- |
| ContentLoadInterface | API Interface for loading and unloading Content files. |

### Structs

| Struct | Description |
| --- | --- |
| ContentFile | This struct acts like a handle for accessing a file loaded by ContentLoadInterface.LoadContentFileAsync. You can use it to access the status and results of the load operation. |
| ContentFileUnloadHandle | A handle that can be used to track the progress of an unload operation. This is returned from ContentFile.UnloadAsync. |
| ContentSceneFile | The handle returned from ContentLoadInterface.LoadSceneAsync. You can use this handle to access the status and results of the load operation. |
| ContentSceneParameters | This struct collects all the ContentLoadInterface.LoadSceneAsync parameters in to a single place. |

### Enumerations

| Enumeration | Description |
| --- | --- |
| LoadingStatus | The loading status of a ContentFile. |
| SceneLoadingStatus | The loading status of a ContentSceneFile. This is accessed by ContentSceneFile.Status. |
