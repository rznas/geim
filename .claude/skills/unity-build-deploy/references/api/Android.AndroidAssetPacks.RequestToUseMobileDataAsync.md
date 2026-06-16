<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPacks.RequestToUseMobileDataAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**RequestToUseMobileDataAsyncOperation** Returns an object that represents the request operation. If you yield this object inside a coroutine, the coroutine pauses until the operation is complete.

### Description

Requests to use mobile data to download Android asset packs.

If the device is not connected to WiFi, it pauses large Android asset pack downloads until a WiFi connection is available. If this is the case, the asset pack has the AndroidAssetPackStatus.WaitingForWifi status. In this situation, you can call RequestToUseMobileDataAsync to give the end user the option to download your application's asset packs using mobile data. This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. Additional resources: RequestToUseMobileDataAsyncOperation, AndroidAssetPacks.CancelAssetPackDownload, AndroidAssetPacks.DownloadAssetPackAsync, AndroidAssetPacks.GetAssetPackStateAsync.

### Parameters

| Parameter | Description |
| --- | --- |
| callback | The callback method to get the result. The callback method must have an AndroidAssetPackUseMobileDataRequestResult parameter. This contains the value that indicates the end user's choice. The application raises this callback a single time after the end user submits their decision. |

### Description

Requests to use mobile data to download Android asset packs.

If the device is not connected to WiFi, it pauses large Android asset pack downloads until a WiFi connection is available. If this is the case, the asset pack has the AndroidAssetPackStatus.WaitingForWifi status. In this situation, you can call RequestToUseMobileDataAsync to give the end user the option to download your application's asset packs using mobile data. This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. Additional resources: AndroidAssetPackUseMobileDataRequestResult, AndroidAssetPacks.CancelAssetPackDownload, AndroidAssetPacks.DownloadAssetPackAsync, AndroidAssetPacks.GetAssetPackStateAsync.
