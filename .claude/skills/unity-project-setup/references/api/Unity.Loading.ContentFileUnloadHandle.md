<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentFileUnloadHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A handle that can be used to track the progress of an unload operation. This is returned from ContentFile.UnloadAsync.

### Properties

| Property | Description |
| --- | --- |
| IsCompleted | Returns true if the unload operation has completed. |

### Public Methods

| Method | Description |
| --- | --- |
| WaitForCompletion | Blocks on the main thread until the unload operation completes. This function can be slow and so should be used carefully to avoid frame rate stuttering. |
