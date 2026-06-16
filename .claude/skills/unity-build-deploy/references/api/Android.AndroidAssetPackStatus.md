<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPackStatus.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Values that indicate the status of an Android asset pack.

Unity always returns the status value and the error together in AndroidAssetPackInfo or AndroidAssetPackState objects. Unity returns these objects via callback methods after you call either AndroidAssetPacks.DownloadAssetPackAsync or AndroidAssetPacks.GetAssetPackStateAsync. When the status value is AndroidAssetPackStatus.Failed or AndroidAssetPackStatus.Unknown, the error value indicates the cause of the failure. For any other status value, the error value should always be AndroidAssetPackError.NoError. This enum directly wraps the [AssetPackStatus](https://developer.android.com/reference/com/google/android/play/core/assetpacks/model/AssetPackStatus) values in the PlayCore API. Additional resources: AndroidAssetPackInfo, AndroidAssetPacks.DownloadAssetPackAsync, AndroidAssetPacks.GetAssetPackStateAsync, AndroidAssetPackState.

### Properties

| Property | Description |
| --- | --- |
| Unknown | Indicates that the Android asset pack is not available for the application. |
| Pending | Indicates that the Android asset pack status should soon change. |
| Downloading | Indicates that the device is downloading the Android asset pack. |
| Transferring | Indicates that the device has downloaded the Android asset pack and is unpacking the asset pack to its final location. |
| Completed | Indicates that the device has downloaded the Android asset pack and the asset pack is available to the application. |
| Failed | Indicates that the device failed to download the Android asset pack. |
| Canceled | Indicates that the Android asset pack download is canceled. |
| WaitingForWifi | Indicates that the device has paused the Android asset pack download until it connects to the WiFi network. |
| NotInstalled | Indicates that the Android asset pack is not installed. |
