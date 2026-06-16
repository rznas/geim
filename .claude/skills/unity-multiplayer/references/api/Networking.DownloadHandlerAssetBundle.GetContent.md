<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerAssetBundle.GetContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| www | A finished UnityWebRequest object with DownloadHandlerAssetBundle attached. |

### Returns

**AssetBundle** The same as DownloadHandlerAssetBundle.assetBundle

### Description

Returns the downloaded AssetBundle, or `null`.

A static function provided for convenience; equivalent to ((DownloadHandlerAssetBundle)www.downloadHandler).assetBundle.
