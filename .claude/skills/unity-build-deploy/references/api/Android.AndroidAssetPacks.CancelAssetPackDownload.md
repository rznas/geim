<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPacks.CancelAssetPackDownload.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPackNames | The array of names of the Android asset packs to cancel the download for. |

### Description

Cancels Android asset pack downloads.

This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. Additional resources: AndroidAssetPacks.DownloadAssetPackAsync.
