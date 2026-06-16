<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This struct acts like a handle for accessing a file loaded by ContentLoadInterface.LoadContentFileAsync. You can use it to access the status and results of the load operation.

### Static Properties

| Property | Description |
| --- | --- |
| GlobalTableDependency | This ContentFile can be passed as a dependency to ContentLoadInterface.LoadContentFileAsync or ContentLoadInterface.LoadSceneAsync to indicate that the external file dependencies should be resolved through the global PersistentManager table. For example, this could be used when the ContentFile references a file loaded through the PersistentManager such as "unity default resources". |

### Properties

| Property | Description |
| --- | --- |
| IsValid | Returns true if the ContentFile handle is valid. |
| LoadingStatus | The loading status of the ContentFile. |

### Public Methods

| Method | Description |
| --- | --- |
| GetObject | Used to access objects within the ContentFile by local file identifier. |
| GetObjects | This function can be used to access all the Objects loaded in the ContentFile. |
| UnloadAsync | Begin an asynchronous unload of the ContentFile. |
| WaitForCompletion | Blocks on the main thread until the load operation completes. This function can be slow and so should be used carefully to avoid frame rate stuttering. |
