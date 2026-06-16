<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPacks.DownloadAssetPackAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPackNames | The array of names of Android asset packs to download. |

### Returns

**DownloadAssetPackAsyncOperation** Returns an object that represents the download operation. If you yield this object inside a coroutine, the coroutine pauses until the operation is complete.

### Description

Downloads Android asset packs.

This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. Additional resources: DownloadAssetPackAsyncOperation, AndroidAssetPackInfo, AndroidAssetPacks.CancelAssetPackDownload, AndroidAssetPacks.GetAssetPackPath, AndroidAssetPacks.GetAssetPackStateAsync, AndroidAssetPacks.RemoveAssetPack, AndroidAssetPacks.RequestToUseMobileDataAsync.

### Parameters

| Parameter | Description |
| --- | --- |
| assetPackNames | The array of names of Android asset packs to download. |
| callback | The callback method to inform about download progress. It gets called multiple times for each asset pack during its download. The callback method must have a parameter of AndroidAssetPackInfo type. The default value is null. |

### Description

Downloads Android asset packs.

This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. Additional resources: AndroidAssetPackInfo, AndroidAssetPacks.CancelAssetPackDownload, AndroidAssetPacks.GetAssetPackPath, AndroidAssetPacks.GetAssetPackStateAsync, AndroidAssetPacks.RemoveAssetPack, AndroidAssetPacks.RequestToUseMobileDataAsync.
