<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPacks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods for handling Android asset packs.

Methods in this class are either direct wrappers of java APIs in Google's PlayCore plugin, or depend on values that the PlayCore API returns. Therefore to use it, the gradle project must include the "com.google.android.play:core" dependency. If your project contains custom asset packs or you enable **Split Application Binary** in Player Settings, Unity automatically adds this dependency to the unityLibrary submodule's build.gradle file. If the PlayCore plugin is missing, calling any wrapper throws an InvalidOperationException exception. Note that PlayCore APIs only work with fast-follow and on-demand delivery type asset packs, therefore methods in this class have the same limitation.

### Static Properties

| Property | Description |
| --- | --- |
| coreUnityAssetPacksDownloaded | Checks if all core Unity asset packs are downloaded. |

### Static Methods

| Method | Description |
| --- | --- |
| CancelAssetPackDownload | Cancels Android asset pack downloads. |
| DownloadAssetPackAsync | Downloads Android asset packs. |
| GetAssetPackPath | Gets the full path to the location where the device stores the assets for the Android asset pack. |
| GetAssetPackStateAsync | Queries the state of Android asset packs. |
| GetCoreUnityAssetPackNames | Gets the name of every core Unity asset pack built for this application that use either the fast-follow or on-demand delivery type. |
| RemoveAssetPack | Removes Android asset pack. |
| RequestToUseMobileDataAsync | Requests to use mobile data to download Android asset packs. |
