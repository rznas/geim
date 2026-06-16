<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.DownloadAssetPackAsyncOperation-downloadFailedAssetPacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the names of Android asset packs that failed to download.

The Android asset pack names this property returns correspond to asset pack downloads that either failed due to some error or that the end user canceled. For more information, call AndroidAssetPacks.DownloadAssetPackAsync and pass a callback method to it. Unity raises the callback with additional information, such as the error code, during the download. Note: This list also includes the names of Android asset packs for which Google's PlayCore API did not raise any callbacks. This happens if you access this property right away after calling DownloadAssetPackAsync, before the PlayCore API raises any of the callbacks. Read-only. Additional resources: DownloadAssetPackAsyncOperation.isDone [[DownloadAssetPackAsyncOperation.progress.
