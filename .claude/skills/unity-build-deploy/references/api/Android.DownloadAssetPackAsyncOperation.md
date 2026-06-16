<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.DownloadAssetPackAsyncOperation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an asynchronous Android asset pack download operation. AndroidAssetPacks.DownloadAssetPackAsync returns an instance of this class.

You can yield until the operation completes, or manually check whether it's done using isDone or keepWaiting properties. You can also track the progress of the operation using the progress property. Additional resources: AndroidAssetPacks.DownloadAssetPackAsync.

### Properties

| Property | Description |
| --- | --- |
| downloadedAssetPacks | Gets the names of Android asset packs downloaded by this operation. |
| downloadFailedAssetPacks | Gets the names of Android asset packs that failed to download. |
| isDone | Checks if the operation is finished. |
| keepWaiting | Checks if the operation is still running. |
| progress | Gets the progress of the operation. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| keepWaiting | Indicates if coroutine should be kept suspended. |
