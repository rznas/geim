<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.GetAssetPackStateAsyncOperation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous Android asset pack state request operation. AndroidAssetPacks.GetAssetPackStateAsync returns an instance of this class.

You can yield until the operation completes, or manually check whether it's done using isDone or keepWaiting properties. Additional resources: AndroidAssetPacks.GetAssetPackStateAsync.

### Properties

| Property | Description |
| --- | --- |
| isDone | Checks if the operation is finished. |
| keepWaiting | Checks if the operation is still running. |
| size | Gets the total size in bytes of all Android asset packs that had their status checked by this operation. |
| states | Gets the states of all Android asset packs that had their status checked by this operation. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| keepWaiting | Indicates if coroutine should be kept suspended. |
