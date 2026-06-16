<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPackStatus.WaitingForWifi.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that the device has paused the Android asset pack download until it connects to the WiFi network.

You can call AndroidAssetPacks.RequestToUseMobileDataAsync to ask for the permission to continue download using the mobile data. If such permission is given by the user, the download should resume automatically. Additional resources: AndroidAssetPacks.RequestToUseMobileDataAsync, AndroidAssetPacks.DownloadAssetPackAsync, AndroidAssetPacks.GetAssetPackStateAsync.
