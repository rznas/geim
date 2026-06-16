<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPacks.GetAssetPackStateAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPackNames | The array of names of the Android asset packs to query the state of. |

### Returns

**GetAssetPackStateAsyncOperation** Returns an object that represents the query operation. If you yield this object inside a coroutine, the coroutine pauses until the operation is complete.

### Description

Queries the state of Android asset packs.

This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. Additional resources: GetAssetPackStateAsyncOperation, AndroidAssetPacks.DownloadAssetPackAsync, AndroidAssetPacks.GetAssetPackPath.

### Parameters

| Parameter | Description |
| --- | --- |
| assetPackNames | The array of names of the Android asset packs to query the state of. |
| callback | The callback method to get the result. Unity raises this callback once when the query is complete and the callback receives the state of queried Android asset packs. The callback method must have two parameters: A ulong type parameter which indicates the total size of the queried asset packs.An array of AndroidAssetPackState which contains the state of each queried asset pack. |

### Description

Queries the state of Android asset packs.

This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. Additional resources: AndroidAssetPackState, AndroidAssetPacks.DownloadAssetPackAsync, AndroidAssetPacks.GetAssetPackPath.
