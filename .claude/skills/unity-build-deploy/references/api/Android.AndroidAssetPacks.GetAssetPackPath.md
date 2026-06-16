<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPacks.GetAssetPackPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPackName | The name of the Android asset pack to get path. |

### Returns

**string** Returns the full path to the location where the device stores the assets for the Android asset pack. If the asset pack you specify is not on the device, or if it does not use the fast-follow or on-demand delivery type, this returns an empty string.

### Description

Gets the full path to the location where the device stores the assets for the Android asset pack.

This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. The returned path can be used with File.IO methods to access assets inside. Additional resources: AndroidAssetPacks.DownloadAssetPackAsync.
