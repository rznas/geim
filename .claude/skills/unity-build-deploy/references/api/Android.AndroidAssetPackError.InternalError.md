<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidAssetPackError.InternalError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Indicates that unknown error occured while downloading an asset pack.

Some possible causes of this are:

- You are trying to use PlayCore API to access install-time delivered Android asset pack.
- You are testing a locally built application (not installed from the Google Play Store) and the Android asset pack with the specified name does not exist.

Additional resources: AndroidAssetPacks.DownloadAssetPackAsync, AndroidAssetPacks.GetAssetPackStateAsync.
