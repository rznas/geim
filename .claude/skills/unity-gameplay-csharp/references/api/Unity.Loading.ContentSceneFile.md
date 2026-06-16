<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentSceneFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The handle returned from ContentLoadInterface.LoadSceneAsync. You can use this handle to access the status and results of the load operation.

### Properties

| Property | Description |
| --- | --- |
| IsValid | Returns true if the ContentSceneFile handle is valid. A handle becomes invalid after the file is unloaded. |
| Scene | The Scene object being loaded. This is accessible both before and after the load operation completes. |
| Status | The loading status of the scene. |

### Public Methods

| Method | Description |
| --- | --- |
| IntegrateAtEndOfFrame | Calling this will cause the scene to integrate at the end of the frame. |
| UnloadAtEndOfFrame | Will trigger the scene to unload at the end of the frame. |
| WaitForLoadCompletion | Blocks on the main thread until the load operation completes. This function can be slow and so should be used carefully to avoid frame rate stuttering. |
