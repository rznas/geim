<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPacks.RemoveAssetPack.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assetPackName | The name of the Android asset pack to remove. |

### Description

Removes Android asset pack.

This method directly wraps Google's PlayCore plugin API. If the PlayCore plugin is missing, calling this method throws an InvalidOperationException exception. If you call this method with any core Unity asset pack names (those that AndroidAssetPacks.GetCoreUnityAssetPackNames returns) as a parameter, the method does nothing. Additional resources: AndroidAssetPacks.DownloadAssetPackAdync.
